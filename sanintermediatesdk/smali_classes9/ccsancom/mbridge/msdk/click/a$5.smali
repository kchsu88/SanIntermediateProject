.class final Lccsancom/mbridge/msdk/click/a$5;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lccsancom/mbridge/msdk/out/Campaign;

.field final synthetic c:Lccsancom/mbridge/msdk/click/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/a;ZLccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/a$5;->c:Lccsancom/mbridge/msdk/click/a;

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/click/a$5;->a:Z

    iput-object p3, p0, Lccsancom/mbridge/msdk/click/a$5;->b:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 518
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/a$5;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$5;->c:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->f(Lccsancom/mbridge/msdk/click/a;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$5;->c:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->NATIVE_SHOW_LOADINGPAGER:Z

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/a$5;->c:Lccsancom/mbridge/msdk/click/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/a;->b(Lccsancom/mbridge/msdk/click/a;)Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/a$5;->b:Lccsancom/mbridge/msdk/out/Campaign;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 524
    :cond_1
    return-void
.end method
