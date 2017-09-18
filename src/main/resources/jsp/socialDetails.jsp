<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script id="socialDetailTmpl" type="text/x-jsrender">
<!--主体-->
<div class="m-dot-dist details">
    <!--详情-->
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

    <!--基本信息-->
	{{if socialChannelVO.baseVO !=null}}
    <div class="m-inf-big" id="social-detail-base">
        <div class="m-dt-bt pr-0 pr-0">基础信息</div>
        <div class="m-dt-list">
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-channelName">渠道名称：</p>

                    <p>{{:socialChannelVO.baseVO.channelName}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-channelCode">渠道编码：</p>

                    <p>{{:socialChannelVO.baseVO.channelCode}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-chlKindName">渠道类型：</p>

                    <p>{{:socialChannelVO.baseVO.chlKindName}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-deptName">管理部门：</p>

                    <p>{{:socialChannelVO.baseVO.deptName}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-businessMode">经营模式：</p>

                    <p>{{:socialChannelVO.baseVO.businessMode}}</p>
                </li>
               <%-- <li>
                    <p class="word">经营性质：</p>

                    <p>{{:socialChannelVO.baseVO.businessNature}}</p>
                </li>--%>
            </ul>
            <ul>
              <%--  <li>
                    <p class="word">建设模式：</p>

                    <p>{{:socialChannelVO.baseVO.constructMode}}</p>
                </li>--%>
                <li>
                    <p class="word socialChannelVO-baseVO-admRegName">行政区域：</p>

                    <p>{{:socialChannelVO.baseVO.admRegName}}</p>
                </li>
				<li>
                    <p class="word socialChannelVO-baseVO-createTime">渠道创建时间：</p>
					<p>{{if socialChannelVO.baseVO.createTime != null}}{{:~timesToFmatter(socialChannelVO.baseVO.createTime)}}
				{{/if}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-businessCircleType">商圈类型：</p>
                    <p>{{:socialChannelVO.baseVO.businessCircleType}}</p>
                </li>
                <%--<li>
                    <p class="word">商圈级别：</p>
                    <p>{{:socialChannelVO.baseVO.businessLevel}}</p>
                </li>--%>
            </ul>
            <mgmt:hasCfg name="social:base:busi_circle_id">
            <ul>
                <%--<li>
                    <p class="word">所属商圈：</p>

                    <p>{{:socialChannelVO.baseVO.busiCircleName}}</p>
                </li>--%>
				<%--
                <mgmt:hasCfg name="social:base:one_ent_one_policy_flag">
                <li>
                    <p class="word">是否一企一策：</p>

                    <p>{{if socialChannelVO.baseVO.oneEntOnePolicyFlag == '1'}}是{{/if}}
                    {{if socialChannelVO.baseVO.oneEntOnePolicyFlag != '1'}}否{{/if}}
                    </p>
                </li>
                </mgmt:hasCfg>
                --%>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-busiRegName">业务区域：</p>

                    <p>{{:socialChannelVO.baseVO.busiRegName}}</p>
                </li>
                <%-- <li>
                    <p class="word">资源授权：</p>
                    <p>{{:socialChannelVO.baseVO.resAuthType}}</p>
                </li>--%>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-channelStarLevel">渠道星级：</p>

                    <p>{{:socialChannelVO.baseVO.channelStarLevel}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-coreFlag">是否核心：</p>

                    <p>{{if socialChannelVO.baseVO.coreFlag == '1'}}是{{/if}}
					   {{if socialChannelVO.baseVO.coreFlag != '1'}}否{{/if}}
					</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-channelManagerName">渠道经理：</p>

                    <p>{{:socialChannelVO.baseVO.channelManagerName}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-channelManagerPhone">渠道经理电话：</p>

                    <p>{{:socialChannelVO.baseVO.channelManagerPhone}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-channelAddress">渠道地址：</p>

                    <p>{{:socialChannelVO.baseVO.channelAddress}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-longitude socialChannelVO-baseVO-latitude">经纬度：</p>

                    <p>{{:socialChannelVO.baseVO.longitude}} {{if not empty socialChannelVO.baseVO.longitude && socialChannelVO.baseVO.longitude != '' }},{{/if}} {{:socialChannelVO.baseVO.latitude}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-contactPerson">联系人：</p>

                    <p>{{:socialChannelVO.baseVO.contactPerson}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-contactPhone">联系人电话：</p>

                    <p>{{:socialChannelVO.baseVO.contactPhone}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-unitFlag">全网统一标识：</p>
                    <p>{{:socialChannelVO.baseVO.unitFlag}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-globalChannelCode">全网统一标识编码：</p>
                    <p>{{:socialChannelVO.baseVO.globalChannelCode}}</p>
                </li>
            </ul>
            <ul>
               <%-- <li>
                    <p class="word">联系人地址：</p>

                    <p>{{:socialChannelVO.baseVO.contactAddress}}</p>
                </li>--%>
                <li>
                    <p class="word socialChannelVO-baseVO-regionType">地域类型：</p>
                    <p>{{:socialChannelVO.baseVO.regionType}}</p>
                </li>
            </ul>
            <ul>
				<%--<li>
					<p class="word">资金电子化标识：</p>
					<p>
                        {{if socialChannelVO.baseVO.fundsElectronicFlag == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.fundsElectronicFlag != '1' }}否{{/if}}
					</p>
				</li>--%>
                <%--<mgmt:hasCfg name="social:base:init_bind_phone">
                <li>
                    <p class="word">电开电话: </p>
                    <p>{{:socialChannelVO.baseVO.initBindPhone}}</p>
                </li>
      			</mgmt:hasCfg>--%>
			</ul>

		    <!--李栋良添加-->
 			<ul>
                <li>
                    <p class="word socialChannelVO-baseVO-exlusiveFlag">是否排他：</p>
                    <p> {{:socialChannelVO.baseVO.exlusiveFlag }}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-terminalSaleAbility">有无终端销售能力：</p>
 						<p>{{if socialChannelVO.baseVO.terminalSaleAbility == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.terminalSaleAbility != '1' }}否{{/if}}</p>
                </li>
            </ul>
          	<ul>
                <li>
                    <p class="word socialChannelVO-baseVO-coreChlFlag">是否核心渠道：</p>

                    <p> {{:socialChannelVO.baseVO.coreChlFlag}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-coreBusiCircleChlFlag">是否核心商圈渠道：</p>
 						<p> {{if socialChannelVO.baseVO.coreBusiCircleChlFlag == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.coreBusiCircleChlFlag != '1' }}否{{/if}}</p>
                </li>
            </ul>
          	<ul>
                <li>
                    <p class="word socialChannelVO-baseVO-chainChlFlag">是否连锁渠道：</p>

                    <p> {{:socialChannelVO.baseVO.chainChlFlag}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-homeBoradbandFlag">是否家宽销售渠道：</p>
 						<p> {{if socialChannelVO.baseVO.homeBroadbandFlag == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.homeBroadbandFlag != '1' }}否{{/if}}</p>
                </li>
            </ul>
          	<ul>
                <li>
                    <p class="word socialChannelVO-baseVO-smallCeoFlag">是否小CEO：</p>
 						<p> {{if socialChannelVO.baseVO.smallCeoFlag == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.smallCeoFlag != '1' }}否{{/if}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-ceoAreaCode">CEO片区编码：</p>
                    <p>{{:socialChannelVO.baseVO.ceoAreaCode}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-inCityFlag">是否城区：</p>
                    <p> {{if socialChannelVO.baseVO.inCityFlag == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.inCityFlag != '1' }}否{{/if}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-areaType">地理位置类型（区域类型）：</p>
                    <p>{{:socialChannelVO.baseVO.areaType}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-chlCoordinationType">渠道协同类别：</p>
                    <p id="chlCoordinationType" >{{:socialChannelVO.baseVO.chlCoordinationType}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-isServSch">渠道地区属性：</p>
                    <p id="isServSch">{{:socialChannelVO.baseVO.isServSch}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-superChnlId">上级渠道编码：</p>
                    <p>{{:socialChannelVO.baseVO.superChnlId}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-busiOperType">业务选择类型：</p>
                    <p id="busiOperType">{{:socialChannelVO.baseVO.busiOperType}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-cardSaleChl">号卡销售渠道：</p>

                    <p> {{:socialChannelVO.baseVO.cardSaleChl }}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-officeHire">SA社会代理：</p>
                    <p> {{if socialChannelVO.baseVO.officeHire == '1' }}是{{/if}}
                        {{if socialChannelVO.baseVO.officeHire != '1' }}否{{/if}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-phoneSubsidyNbr">电话补贴号码：</p>
                    <p>{{:socialChannelVO.baseVO.phoneSubsidyNbr}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-glebeNum">土地证号：</p>
                    <p>{{:socialChannelVO.baseVO.glebeNum}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-bindDiscountRate">已绑定_折扣率(百分比)：</p>
                    <p>{{:socialChannelVO.baseVO.bindDiscountRate}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-bindDiscountValue">已绑定_折扣值(绝对值)：</p>
                    <p>{{:socialChannelVO.baseVO.bindDiscountValue}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-unbindDiscountRate">未绑定_折扣率(百分比)：</p>
                    <p>{{:socialChannelVO.baseVO.unbindDiscountRate}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-unbindDiscountValue">未绑定_折扣值(绝对值)：</p>
                    <p>{{:socialChannelVO.baseVO.unbindDiscountValue}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-totalDiscount">商品总折扣：</p>
                    <p>{{:socialChannelVO.baseVO.totalDiscount}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-baseVO-homeCardPromotion">家园卡小区促销：</p>
                    <p>{{:socialChannelVO.baseVO.homeCardPromotion}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-baseVO-xzAdvanceNum">西藏预提号：</p>
                    <p>{{:socialChannelVO.baseVO.xzAdvanceNum}}</p>
                </li>
            </ul>
        </div>
    </div>
	{{/if}}
    <!-- /基本信息-->
    <!--资质信息-->
	{{if socialChannelVO.qualityVO != null}}
    <div class="m-inf-big" id="social-detail-quality">
        <div class="m-dt-bt pr-0 pr-0">资质信息</div>
        <div class="m-dt-list">
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-legalEntityFlag">是否法人代表：</p>

                    <p>
						{{if socialChannelVO.qualityVO.legalEntityFlag == '1'}}是{{/if}}
						{{if socialChannelVO.qualityVO.legalEntityFlag != '1'}}否{{/if}}
					</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-businessLicense">营业执照号码：</p>

                    <p>{{:socialChannelVO.qualityVO.businessLicense}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-legalRepresentative">法人代表：</p>

                    <p>{{:socialChannelVO.qualityVO.legalRepresentative}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-legalPhone">法人电话：</p>

                    <p>{{:socialChannelVO.qualityVO.legalPhone}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-legalCertType">法人证件类型：</p>
                    <p>{{:socialChannelVO.qualityVO.legalCertType}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-legalIdno">法人证件号码：</p>
                    <p>{{:socialChannelVO.qualityVO.legalIdno}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-agnetName">代理商名称：</p>

                    <p>{{:socialChannelVO.qualityVO.agentName}}</p>
                </li>
                 <li>
                    <p class="word socialChannelVO-qualityVO-registteredCapital">注册资金：</p>

                    <p>{{:socialChannelVO.qualityVO.registeredCapital/1000}} 元</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-businessPermit">营业许可证号：</p>

                    <p>{{:socialChannelVO.qualityVO.businessPermit}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-taxtRegCertCode">税务登记号：</p>
                    <p>{{:socialChannelVO.qualityVO.taxRegCertCode}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-textRegTime">税务登记时间：</p>
                    {{if socialChannelVO.qualityVO.taxRegTime}}
                    <p>{{:~timesToFmatter(socialChannelVO.qualityVO.taxRegTime)}}</p>
                    {{/if}}
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-lastAuditTime">最后审查时间：</p>
                    {{if socialChannelVO.qualityVO.lastAuditTime}}
                    <p>{{:~timesToFmatter(socialChannelVO.qualityVO.lastAuditTime)}}</p>
                    {{/if}}
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-nextAuditTime">下一次审查时间：</p>
                    {{if socialChannelVO.qualityVO.nextAuditTime}}
                    <p>{{:~timesToFmatter(socialChannelVO.qualityVO.nextAuditTime)}}</p>
                    {{/if}}
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-businessServiceScope">经营服务范围：</p>

                    <p>{{:socialChannelVO.qualityVO.businessServiceScope}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-btToVatNature">营改增性质：</p>

                    <p>{{:socialChannelVO.qualityVO.btToVatNature}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word creditFile-attachMongodbId">征信信息：</p>
                    {{if creditFile && creditFile.attachMongodbId != ''}}
                        <p class="z-lx"><span>
                        <a href="{{:creditFile.baseContext}}/channel/download?fileId={{:creditFile.attachMongodbId}}&fileName={{:~encodeURIComponent(creditFile.attachName)}}">{{:creditFile.attachName}}</a>
                    </span></p>
                    {{/if}}
                </li>
                <li>
                    <p class="word approvalFile-attachMongodnId">协议审查表：</p>
                    {{if approvalFile && approvalFile.attachMongodbId != ''}}
                        <p class="z-lx"><span>
                        <a href="{{:approvalFile.baseContext}}/channel/download?fileId={{:approvalFile.attachMongodbId}}&fileName={{:~encodeURIComponent(approvalFile.attachName)}}">{{:approvalFile.attachName}}</a>
                    </span></p>
                    {{/if}}
                </li>
            </ul>
            <mgmt:hasCfg name="social:quality:business_input">
            <ul>
                <li>
                    <p class="word businessFile-attchMongodbId">业务活动背景情况：</p>
                    {{if businessFile && businessFile.attachMongodbId != ''}}
                        <p class="z-lx"><span>
                        <a href="{{:businessFile.baseContext}}/channel/download?fileId={{:businessFile.attachMongodbId}}&fileName={{:~encodeURIComponent(businessFile.attachName)}}">{{:businessFile.attachName}}</a>
                    </span></p>
                    {{/if}}
                </li>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-businessState">经营状态：</p>
                    <p>{{:socialChannelVO.qualityVO.businessState}}</p>
                </li>
                <li>
                    <p class="word socialChannelVO-qualityVO-agentIndustryType">代理商行业类别：</p>
                    <p>{{:socialChannelVO.qualityVO.agentIndustryType}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word socialChannelVO-qualityVO-agentIndustryVantage">代理商行业优势：</p>
                    <p>{{:socialChannelVO.qualityVO.agentIndustryVantage}}</p>
                </li>
            </ul>
        </div>
    </div>
	{{/if}}
    <!-- /资质信息-->
    <!--授权代理合同-->
	{{if socialChannelVO.agentContractVO != null}}
    <div class="m-inf-big" id="social-detail-contract">
        <div class="m-dt-bt pr-0 pr-0">授权代理合同</div>
        <div class="m-dt-list">
             <mgmt:hasCfg name="social:contract:contract_sys_flag">
             <ul>
                <li>
                    <p class="word socialChannelVO-agentContractVO-contractSysFlag">同步合同系统信息：</p>

                    <p>
						{{if socialChannelVO.agentContractVO.contractSysFlag == '1'}}是{{/if}}
						{{if socialChannelVO.agentContractVO.contractSysFlag != '1'}}否{{/if}}
					</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_num">
                <li>
                    <p class="word socialChannelVO-agentContractVO-contractNum">合同流水号：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractNum}}</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li class="m-xlag">
                    <p class="word">合同名称：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractName}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word">合同编码：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractCode}}</p>
                </li>
                <li>
                    <p class="word">保证金(元)：</p>
                    <p>{{:socialChannelVO.baseVO.contractBond/1000}}</p>

                </li>
            </ul>
            <mgmt:hasCfg name="social:contract:contract_class">
            <ul>
                <li>
                    <p class="word">合同类别：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractClass}}</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_bond">
                <li>
                    <p class="word">履约预付金：</p>
                    <p>{{:socialChannelVO.agentContractVO.contractBond/1000}}</p>
                    <p>元</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            </mgmt:hasCfg>
            <mgmt:hasCfg name="social:contract:contract_amount">
            <ul>
                <li>
                    <p class="word">合同金额：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractAmount/1000}}</p>
                    <p>元</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_copies">
                <li>
                    <p class="word">合同份数：</p>

                    <p>{{:socialChannelVO.agentContractVO.contractCopies}}</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word">合同开始时间：</p>
                    {{if socialChannelVO.agentContractVO.contractStartTime}}
                    <p>{{:~timesToFmatter(socialChannelVO.agentContractVO.contractStartTime)}}</p>
                    {{/if}}
                </li>
                <li>
                    <p class="word">合同到期时间：</p>
                    {{if socialChannelVO.agentContractVO.contractEndTime}}
                    <p>{{:~timesToFmatter(socialChannelVO.agentContractVO.contractEndTime)}}</p>
                    {{/if}}
                </li>
            </ul>
            <ul>
                <li class="m-xlag">
                    <p class="word">备注：</p>

                    <p>{{:socialChannelVO.agentContractVO.remark}}</p>
                </li>
            </ul>
            <ul>
                <li class="x-img">
                    <p class="word">合同扫描件：</p>
                    
                    {{for contractAttachList}}
                        <p>
                            <%--contractAttachList.attachMongodbId--%>
                            <a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:attachMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:attachMongodbId}}" width="78px" height="108px"></a>
                        </p>
                    {{/for}}
                </li>
            </ul>

        </div>
        <div class="m-dt-bt pr-0 pr-0">房屋合同</div>
        <div class="m-dt-list">
             <mgmt:hasCfg name="social:contract:contract_sys_flag">
             <ul>
                <li>
                    <p class="word">同步合同系统信息：</p>

                    <p>
						{{if socialChannelVO.houseContractVO.contractSysFlag == '1'}}是{{/if}}
						{{if socialChannelVO.houseContractVO.contractSysFlag != '1'}}否{{/if}}
					</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_num">
                <li>
                    <p class="word">合同流水号：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractNum}}</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word">合同名称：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractName}}</p>
                </li>
                <li>
                    <p class="word">合同编码：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractCode}}</p>
                </li>
                <li>
            </ul>
            <mgmt:hasCfg name="social:contract:contract_amount">
            <ul>
                <li>
                    <p class="word">合同金额：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractAmount/1000}}</p>
                    <p>元</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_copies">
                <li>
                    <p class="word">合同份数：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractCopies}}</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word">房屋归属：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractHouseOwner}}</p>
                </li>
                <mgmt:hasCfg name="social:contract:contract_class">
                <li>
                    <p class="word">合同类别：</p>

                    <p>{{:socialChannelVO.houseContractVO.contractClass}}</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            <ul>
                <li>
                    <p class="word">合同开始时间：</p>

                    {{if socialChannelVO.houseContractVO.contractStartTime}}
                    <p>{{:~dateToFmatter(socialChannelVO.houseContractVO.contractStartTime)}}</p>
                    {{/if}}
                </li>
                <li>
                    <p class="word">合同到期时间：</p>

                    {{if socialChannelVO.houseContractVO.contractEndTime}}
                    <p>{{:~dateToFmatter(socialChannelVO.houseContractVO.contractEndTime)}}</p>
                    {{/if}}
                </li>
            </ul>
            <mgmt:hasCfg name="social:contract:house_contract_upload">
            <ul>
                <li class="x-img">
                    <p class="word">合同扫描件：</p>

                    {{for houseContractAttachList}}
                        <p>
                            <a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:attachMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:attachMongodbId}}" width="78px" height="108px"></a>
                            <%--houseContractAttachList.attachMongodbId--%>
                        </p>
                    {{/for}}
                </li>
            </ul>
            </mgmt:hasCfg>
        </div>
    </div>
	{{/if}}
    <!-- /授权代理合同-->
    <!--授权代理合同-->
	{{if socialChannelVO.rewardBankVO !=null}}
    <div class="m-inf-big" id="social-detail-bank">
        <div class="m-dt-bt pr-0 pr-0">酬金账户信息</div>
        <div class="m-dt-list">
            <ul>
                <li class="m-xlag">
                    <p class="word">开户行：</p>

                    <p>{{:socialChannelVO.rewardBankVO.bankName}}</p>
                </li>

            </ul>
            <mgmt:hasCfg name="social:bank:bank_union_code">
            <ul>
                <li>
                    <p class="word">开户行银联号：</p>

                    <p>{{:socialChannelVO.rewardBankVO.bankUnionCode}}</p>
                </li>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word">开户支行：</p>

                    <p>{{:socialChannelVO.rewardBankVO.branchBankName}}</p>
                </li>
                <li>
                    <p class="word">开户名：</p>

                    <p>{{:socialChannelVO.rewardBankVO.acctName}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word">银行账户：</p>

                    <p>{{:socialChannelVO.rewardBankVO.acctNo}}</p>
                </li>
                <li>
                    <p class="word">酬金短信：</p>

                    <p>{{:socialChannelVO.rewardBankVO.acctSmsPhone}}</p>
                </li>
            </ul>
        </div>
        <div class="m-dt-bt pr-0 pr-0">资金账户信息</div>
        <div class="m-dt-list">
            <ul>
                <li class="m-xlag">
                    <p class="word">开户行：</p>

                    <p>{{:socialChannelVO.captitalBankVO.bankName}}</p>
                </li>

            </ul>
            <mgmt:hasCfg name="social:bank:bank_union_code">
            <ul>
                <li>
                    <p class="word">开户行银联号：</p>

                    <p>{{:socialChannelVO.captitalBankVO.bankUnionCode}}</p>
                </li>
            </ul>
            </mgmt:hasCfg>
            <ul>
                <li>
                    <p class="word">开户支行：</p>

                    <p>{{:socialChannelVO.captitalBankVO.branchBankName}}</p>
                </li>
                <li>
                    <p class="word">开户名：</p>

                    <p>{{:socialChannelVO.captitalBankVO.acctName}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word">银行账户：</p>

                    <p>{{:socialChannelVO.captitalBankVO.acctNo}}</p>
                </li>
                <li>
                    <p class="word">扣款方式：</p>

                    <p>{{:socialChannelVO.captitalBankVO.acctChargebacks}}</p>
                </li>
            </ul>

        </div>
        <mgmt:hasCfg name="social:collection">
        {{if socialChannelVO.captitalBankVO.acctChargebacks == '托收'}}
        <div class="m-dt-bt pr-0 pr-0">托收信息</div>
        <div class="m-dt-list">
            <ul>
                <li class="m-xlag">
                    <p class="word">开户行：</p>

                    <p>{{:socialChannelVO.captitalBankVO.collectionBankName}}</p>
                </li>

            </ul>
            <ul>
                <li>
                    <p class="word">开户行银联号：</p>

                    <p>{{:socialChannelVO.captitalBankVO.collectionBankUnionCode}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word">开户名：</p>

                    <p>{{:socialChannelVO.captitalBankVO.collectionAcctName}}</p>
                </li>
                <li>
                    <p class="word">银行账户：</p>

                    <p>{{:socialChannelVO.captitalBankVO.collectionAcctNo}}</p>
                </li>
            </ul>
            <ul>
                <li class="x-img">
                    <p class="word">开户许可证或同城委托书照片：</p>
                    {{for collectionAttachList}}
                        <p>
                            <a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:attachMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:attachMongodbId}}" width="78px" height="108px"></a>
                            <%--collectionAttachList.attachMongodbId--%>
                        </p>
                    {{/for}}
                </li>
            </ul>
        </div>
        {{/if}}
        </mgmt:hasCfg>
    </div>
	{{/if}}
    <!-- /授权代理合同-->
    <!--授权代理合同-->
	{{if socialChannelVO.shopVO !=null}}
    <div class="m-inf-big" id="social-detail-shop">
        <div class="m-dt-bt pr-0 pr-0">店面信息</div>
        <div class="m-dt-list">
            <ul>
                <li>
                    <p class="word">开业时间：</p>
                    {{if socialChannelVO.shopVO.openTime}}
                    <p>{{:~dateToFmatter(socialChannelVO.shopVO.openTime)}}</p>
                    {{/if}}
                </li>
                <li>
                    <p class="word">营业时间：</p>
                    <p>{{:socialChannelVO.shopVO.busiHours}} 小时</p>
                </li>
            </ul>
            <ul>
                 <li>
                    <p class="word">门头间数：</p>

                    <p>{{:socialChannelVO.shopVO.shopRoomNum}} 间</p>
                </li>
                <li>
                    <p class="word">门头面积：</p>

                    <p>{{:socialChannelVO.shopVO.shopArea}}</p>
                </li>
            </ul>
            <ul>
                <li>
                    <p class="word">经营面积：</p>

                    <p>{{:socialChannelVO.shopVO.businessArea}}</p>
                </li>
                <mgmt:hasCfg name="social:shop:unify_vi_flag">
                <li>
                    <p class="word">装修水平是否统一：</p>

                    <p>{{if socialChannelVO.shopVO.unifyViFlag == '1'}}统一{{/if}}
					   {{if socialChannelVO.shopVO.unifyViFlag != '1'}}非统一{{/if}}
					</p>
                </li>
                </mgmt:hasCfg>
            </ul>
            <ul>
                <li class="x-img">
                    <p class="word">全景照片：</p>
                    {{for shopAttachList}}
                        <p>
                            <a href="javascript:" class="smallimage" rel="{{:baseContext}}/channel/image/{{:attachMongodbId}}"><img src="{{:baseContext}}/channel/image/{{:attachMongodbId}}" width="78px" height="108px"></a>
                            <%--shopAttachList.attachMongodbId--%>
                        </p>
                    {{/for}}
                </li>
            </ul>

        </div>
    </div>
	{{/if}}
    <!-- /授权代理合同-->
    <!--<div class="l-dt-bj text-c pd10">
        <a href="#" class="btn btn-green btn-large">关闭</a>
    </div>-->
    <!-- /详情-->

</div>
<!-- /主体-->


</script>

