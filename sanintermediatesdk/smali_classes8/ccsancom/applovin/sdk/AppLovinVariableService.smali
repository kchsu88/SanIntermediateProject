.class public interface abstract Lccsancom/applovin/sdk/AppLovinVariableService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract loadVariables()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setOnVariablesUpdateListener(Lccsancom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
