.class public Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;
.super Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy;
.source "ConstraintProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryChargingProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lccsanandroidx/work/impl/background/systemalarm/ConstraintProxy;->onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    return-void
.end method
