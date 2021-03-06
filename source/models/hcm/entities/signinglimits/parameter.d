module models.hcm.entities.signinglimits.parameter;

@safe:
import models.hcm;

class DHcmSignLimitParametersEntity : DOOPEntity {
  mixin(EntityThis!("HcmSignLimitParametersEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "signingLimitsForEmployeesOnly": StringAttribute, //
        "requireExplicitSigningLimitRequest": StringAttribute, //
        "key": StringAttribute, //
        "limitBasis": StringAttribute, //
        "backingTable_HRPLimitParametersRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_signinglimits.parameters");
  }
}
mixin(EntityCalls!("HcmSignLimitParametersEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmSignLimitParametersEntity);
  
    auto entity = HcmSignLimitParametersEntity;
  }
}