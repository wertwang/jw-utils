<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<div id="detailInfo">
</div>
	<script id="taskDetailTmpl" type="text/x-jsrender">
	<div class="m-dot-dist details">
		<div class="m-inf-big">
			<div class="m-dt-list m-sp">
				<ul>
					<li>
						<p class="word">审批单：</p>
						<p id="approvalNo"></p>
						<input type="hidden" id="js-woId"/>
						<input type="hidden" id="js-actCurTaskId"/>
						<input type="hidden" id="js-actProcInsId"/>
						<input type="hidden" id="js-taskStatus"/>
					</li>
				</ul>
			</div>
			<!--基础信息-->
			{{if baseInfoVO != null}}
			<div class="m-inf-big" id="owned-detail-base">
				<div class="m-dt-bt pr-0 pr-0">基础信息</div>
				<div class="m-dt-list">
					<ul>
						<li>
							<p class="word">渠道名称：</p>
							<p id="js-channelName">{{:baseInfoVO.channelName}}</p>
						</li>
						<li>
							<p class="word">渠道编码：</p>
							<p>{{:baseInfoVO.channelCode}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">渠道类型：</p>
							<p>{{:baseInfoVO.chlKindName}}</p>
						</li>
						<li>
							<p class="word">管理部门：</p>
							<p>{{:baseInfoVO.deptName}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">经营模式：</p>
							<p>{{:baseInfoVO.businessMode}}</p>
						</li>
						<li>
							<p class="word">渠道创建时间：</p>
							<p>{{if baseInfoVO.createTime != null}}{{:~timesToFmatter(baseInfoVO.createTime)}}
							{{/if}}</p>
						</li>
						<%--<li>
							<p class="word">经营性质：</p>
							<p>{{:baseInfoVO.businessNature}}</p>
						</li>--%>
					</ul>
					<ul>
						<%--<li>
							<p class="word">建设模式：</p>
							<p>{{:baseInfoVO.constructMode}}</p>
						</li>--%>
						<li>
							<p class="word">行政区域：</p>
							<p>{{:baseInfoVO.admRegName}}</p>
						</li>
                        <li>
                            <p class="word">经纬度：</p>
                            <p>{{:baseInfoVO.longitude}} {{if not empty baseInfoVO.longitude && baseInfoVO.longitude != '' }},{{/if}} {{:baseInfoVO.latitude}} </p>
                        </li>
					</ul>


                    <ul>
                        <li>
                            <p class="word">商圈类型：</p>
                            <p>{{:baseInfoVO.businessCircleType}}</p>
                        </li>
                        <li>
                            <p class="word">业务区域：</p>
                            <p>{{:baseInfoVO.busiRegName}}</p>
                        </li>
					</ul>
					<%--<ul>
                        <li>
                            <p class="word">商圈级别：</p>
                            <p>{{:baseInfoVO.businessLevel}}</p>
                        </li>
                    </ul>--%>


                    <%--<ul>
                        <li>
                            <p class="word">所在商圈：</p>
                            <p>{{:baseInfoVO.busiCircleName}}</p>
                        </li>
                    </ul>--%>
					<%-- <ul>
						<li>
							<p class="word">业务区域：</p>
							<p>{{:baseInfoVO.busiRegName}}</p>
						</li>
                        <li>
                            <p class="word">资源授权：</p>
                            <p>{{:baseInfoVO.resAuthType}}</p>
                        </li>
					</ul>--%>
                    <ul>
                        <li>
                            <p class="word">渠道星级：</p>

                            <p>{{:baseInfoVO.channelStarLevel}}</p>
                        </li>
                        <li>
                            <p class="word">是否核心：</p>

                            <p>{{:baseInfoVO.coreFlagName}}
                            </p>
                        </li>
                    </ul>
					<ul>
						<li>
							<p class="word">渠道经理：</p>
							<p>{{:baseInfoVO.channelManagerName}}</p>
						</li>
						<li>
							<p class="word">渠道经理电话：</p>
							<p>{{:baseInfoVO.channelManagerPhone}}</p>
						</li>
					</ul>
					<ul>
						<%--
					 	<li>
                            <p class="word">是否一企一策：</p>
                            <p>{{:baseInfoVO.oneEntOnePolicyFlag}}
                            </p>
                        </li>
                        --%>
						<li>
							<p class="word">渠道地址：</p>
							<p>{{:baseInfoVO.channelAddress}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">联系人：</p>
							<p>{{:baseInfoVO.contactPerson}}</p>
						</li>
						<li>
							<p class="word">联系人电话：</p>
							<p>{{:baseInfoVO.contactPhone}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">全网统一标识：</p>
							<p>{{:baseInfoVO.unitFlag}}</p>
						</li>
						<li>
							<p class="word">全网统一标识编码：</p>
							<p>{{:baseInfoVO.globalChannelCode}}</p>
						</li>
					</ul>
                    <ul>
                       <%-- <li>
                            <p class="word">联系人地址：</p>

                            <p>{{:baseInfoVO.contactAddress}}</p>
                        </li>--%>
                        <li>
                            <p class="word">地域类型：</p>
                            <p>{{:baseInfoVO.regionType}}</p>
                        </li>
                        <li>
                            <p class="word">地理位置类型（区域类型）：</p>
                            <p>{{:baseInfoVO.areaType}}</p>
                        </li>
                    </ul>


					<!--李栋良添加-->
					<ul>
						<li>
							<p class="word">是否排他：</p>
							<p>{{:baseInfoVO.exlusiveFlag}}</p>
						</li>
						<li>
							<p class="word">有无终端销售能力：</p>
							<p>{{:baseInfoVO.terminalSaleAbility}}
							</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">是否核心渠道：</p>
							<p>{{:baseInfoVO.coreChlFlag}}
							</p>
						</li>
						<li>
							<p class="word">是否核心商圈渠道：</p>
							<p>{{:baseInfoVO.coreBusiCircleChlFlag}}
							</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">是否连锁渠道：</p>
							<p>{{:baseInfoVO.chainChlFlag}}
							</p>
						</li>
						<li>
							<p class="word">是否家宽销售渠道：</p>
							<p>{{:baseInfoVO.homeBroadbandFlag}}
							</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">是否小CEO：</p>
							<p>{{:baseInfoVO.smallCeoFlag}}
							</p>
						</li>
                        <li>
                            <p class="word">CEO片区编码：</p>
                            <p>{{:baseInfoVO.ceoAreaCode}}</p>
                        </li>
					</ul>
					<ul>
                        <li>
                            <p class="word">是否城区：</p>
                            <p> {{:baseInfoVO.inCityFlag}}
							</p>
                        </li>

                    </ul>
                    <ul>
                        <li>
                            <p class="word">渠道协同类别：</p>
                            <p id="chlCoordinationType" >{{:baseInfoVO.chlCoordinationType}}</p>
                        </li>
                        <li>
                            <p class="word">渠道地区属性：</p>
                            <p id="isServSch">{{:baseInfoVO.isServSch}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">上级渠道编码：</p>
                            <p>{{:baseInfoVO.superChnlId}}</p>
                        </li>
                        <li>
                            <p class="word">业务选择类型：</p>
                            <p id="busiOperType">{{:baseInfoVO.busiOperType}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">号卡销售渠道：</p>
                            <p>{{:baseInfoVO.cardSaleChl}}
                            </p>
                        </li>
                        <li>
                            <p class="word">SA社会代理：</p>
                            <p>{{:baseInfoVO.officeHire}}
                            </p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">电话补贴号码：</p>
                            <p>{{:baseInfoVO.phoneSubsidyNbr}}</p>
                        </li>
                        <li>
                            <p class="word">土地证号：</p>
                            <p>{{:baseInfoVO.glebeNum}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">已绑定_折扣率(百分比)：</p>
                            <p>{{:baseInfoVO.bindDiscountRate}}</p>
                        </li>
                        <li>
                            <p class="word">已绑定_折扣值(绝对值)：</p>
                            <p>{{:baseInfoVO.bindDiscountValue}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">未绑定_折扣率(百分比)：</p>
                            <p>{{:baseInfoVO.unbindDiscountRate}}</p>
                        </li>
                        <li>
                            <p class="word">未绑定_折扣值(绝对值)：</p>
                            <p>{{:baseInfoVO.unbindDiscountValue}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">商品总折扣：</p>
                            <p>{{:baseInfoVO.totalDiscount}}</p>
                        </li>
                        <li>
                            <p class="word">家园卡小区促销：</p>
                            <p>{{:baseInfoVO.homeCardPromotion}}</p>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <p class="word">西藏预提号：</p>
                            <p>{{:baseInfoVO.xzAdvanceNum}}</p>
                        </li>
                    </ul>
				</div>
			</div>
			{{/if}}
			<!-- /基础信息-->
			<!--合同信息-->
			{{if contractInfoVO != null}}
			<div class="m-inf-big" id="owned-detail-contract">
				<div class="m-dt-bt pr-0">房屋合同－合同信息</div>
				<div class="m-dt-list">
					<mgmt:hasCfg name="owned:contract:contract_sys_flag">
					<ul>
						<li>
							<p class="word" style="width: 140px">是否同步合同系统信息：</p>
							<p>
							 	{{if contractInfoVO.contractSysFlag != '1'}}否{{/if}}
							  	{{if contractInfoVO.contractSysFlag == '1'}}是{{/if}}
							</p>
						</li>
						<mgmt:hasCfg name="owned:contract:contract_num">
							<li>
							<p class="word">合同流水号：</p>
							<p>{{:contractInfoVO.contractNum}}</p>
							</li>
						</mgmt:hasCfg>
					</ul>
					</mgmt:hasCfg>
					<ul>
						<li>
							<p class="word">房屋合同名称：</p>
							<p>{{:contractInfoVO.contractName}}</p>
						</li>
						
					</ul>
					<ul>
						<li>
							<p class="word">房屋归属：</p>
							<p>{{:contractInfoVO.contractHouseOwner}}</p>
						</li>
						<li>
							<p class="word">合同编码：</p>
							<p>{{:contractInfoVO.contractCode}}</p>
						</li>
					</ul>
					<ul>
						<mgmt:hasCfg name="owned:contract:contract_amount">
						<li>
							<p class="word">合同金额：</p>
							<p>{{:contractInfoVO.contractAmount/1000}}</p>
						</li>
						</mgmt:hasCfg>
						<mgmt:hasCfg name="owned:contract:contract_copies">
						<li>
							<p class="word">合同份额：</p>
							<p>{{:contractInfoVO.contractCopies}}</p>
						</li>
						</mgmt:hasCfg>
					</ul>
					<ul>
						<li>
							<p class="word">合同开始时间：</p>
							
							<p>{{if contractInfoVO.contractStartTime}}{{:~dateToFmatter(contractInfoVO.contractStartTime)}}{{/if}}
							</p>
							
						</li>
						<li>
						    
							<p class="word">合同到期时间：</p>
							<p>{{if contractInfoVO.contractEndTime}}{{:~dateToFmatter(contractInfoVO.contractEndTime)}}{{/if}}</p>
						    
						</li>
					</ul>
				</div>
			</div>
			{{/if}}
			<!-- /合同信息-->
			<!--店面信息-->
			{{if shopInfoVO != null}}
			<div class="m-inf-big" id="owned-detail-shop">
				<div class="m-dt-bt pr-0">店面信息</div>
				<div class="m-dt-list">
					<ul>
						<li>
							<p class="word">开业时间：</p>
							<p>{{if shopInfoVO.openTime}}{{:~timesToFmatter(shopInfoVO.openTime)}}{{/if}}</p>
						</li>
						<li>
							<p class="word">经营面积：</p>
							<p>{{:shopInfoVO.businessArea}}</p>
						</li>

					</ul>
					<ul>
						<li>
							<p class="word">后台面积：</p>
							<p>{{:shopInfoVO.backgroundArea}}</p>
						</li>
						<li>
							<p class="word">门头面积：</p>
							<p>{{:shopInfoVO.shopArea}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">楼层数：</p>
							<p>{{:shopInfoVO.floorNum}}</p>
						</li>
						<li>
							<p class="word">台席数：</p>
							<p>{{:shopInfoVO.businessDeskNum}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">营业人员：</p>
							<p>{{:shopInfoVO.businessPersonNum}}</p>
						</li>
						<mgmt:hasCfg name="owned:shop:unify_vi_flag">
						<li>
							<p class="word" style="width:120px">装修水平是否统一VI：</p>
							<p>
								{{if shopInfoVO.unifyViFlag == '1'}}统一{{/if}}
								{{if shopInfoVO.unifyViFlag != '1'}}非统一{{/if}}
							</p>
						</li>
						</mgmt:hasCfg>
					</ul>
					<ul>
						<li>
							<p class="word">营业时间(小时)：</p>
							<p>{{:shopInfoVO.busiHours}}</p>
						</li>
					</ul>
					<ul>
						<li class="x-img">
							<p class="word">全景照片：</p>
							{{if shopInfoVO.panoramaPicMongodbId != ''}}
							<p>
								<a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:shopInfoVO.panoramaPicMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:shopInfoVO.panoramaPicMongodbId}}" width="78px" height="108px"></a>
							</p>
							{{/if}}
							{{if shopInfoVO.backgroundPicMongodbId != ''}}
							<p>
								<a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:shopInfoVO.backgroundPicMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:shopInfoVO.backgroundPicMongodbId}}" width="78px" height="108px"></a>
							</p>
							{{/if}}
						</li>

					</ul>
				</div>
			</div>
			{{/if}}
			<!-- /店面信息-->
			<!--设备信息-->
			{{if deviceInfoVO != null}}
			<div class="m-inf-big" id="owned-detail-device">
				<div class="m-dt-bt pr-0">设备信息</div>
				
				{{for deviceInfoVO}} 
				<div class="m-dt-list">
					<ul>
						<li>
							<p class="word">设备类型：</p>
							<p>{{:deviceTypeName}}</p>
						</li>
						<li>
							<p class="word">设备名称：</p>
							<p>{{:deviceName}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">固定资产编号：</p>
							<p>{{:fixedAssetCode}}</p>
						</li>
						<li>
							<p class="word">设备型号：</p>
							<p>{{:deviceModel}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">设备单价：</p>
							<p>{{:devicePrice/1000}}</p>
						</li>
						<li>
							<p class="word">设备数量：</p>
							<p>{{:deviceNum}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">供货厂商：</p>
							<p>{{:supplier}}</p>
						</li>
						<li>
							<p class="word">维护方：</p>
							<p>{{:maintainer}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">到货日期：</p>
							<p>{{if arrivalTime}}{{:~timesToFmatter(arrivalTime)}}{{/if}}</p>
						</li>
						<li>
							<p class="word">使用日期：</p>
							<p>{{if startUseTime}}{{:~timesToFmatter(startUseTime)}}{{/if}}</p>
						</li>
					</ul>
					<ul>
						<li>
							<p class="word">报废日期：</p>
							<p>{{if discardeTime}}{{:~timesToFmatter(discardeTime)}}{{/if}}</p>
						</li>
						<li>
							<p class="word">设备描述：</p>
							<p>{{:deviceDesc}}</p>
						</li>
					</ul>
					
					
				</div>
				{{/for}}

			</div>
		</div>
		{{/if}}
		<!-- /店面信息-->
		
	</div>
	</script>
	<script id="taskDetailBtnTmpl" type="text/x-jsrender">
		<!--按钮-->
		<div class="z-nextbtn  mt-10 text-c pt-10 pb-10">
			{{for outGoingTransNames}}
				<a href="#" class="btn btn-green btn-medium ml-60" id="{{:key}}" onclick="pager._clickTaskBtn('{{:key}}','{{:taskStatus}}');">{{:value}}</a>
			{{/for}}
		</div>
	</script>

