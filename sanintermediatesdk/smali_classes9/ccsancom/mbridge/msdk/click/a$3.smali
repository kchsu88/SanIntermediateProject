.class final Lccsancom/mbridge/msdk/click/a$3;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic d:Lccsancom/mbridge/msdk/click/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/a;ZZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/click/a$3;->a:Z

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/click/a$3;->b:Z

    iput-object p4, p0, Lccsancom/mbridge/msdk/click/a$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 420
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a$3;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a$3;->b:Z

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 424
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a$3;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    .line 425
    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/click/a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$3;->d:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$3;->c:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 429
    :cond_1
    return-void
.end method
