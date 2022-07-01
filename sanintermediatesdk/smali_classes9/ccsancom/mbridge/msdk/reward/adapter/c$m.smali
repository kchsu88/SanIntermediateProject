.class final Lccsancom/mbridge/msdk/reward/adapter/c$m;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# static fields
.field private static final a:Lccsancom/mbridge/msdk/reward/adapter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1701
    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/c;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a:Lccsancom/mbridge/msdk/reward/adapter/c;

    return-void
.end method

.method static synthetic a()Lccsancom/mbridge/msdk/reward/adapter/c;
    .locals 1

    .line 1700
    sget-object v0, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a:Lccsancom/mbridge/msdk/reward/adapter/c;

    return-object v0
.end method
