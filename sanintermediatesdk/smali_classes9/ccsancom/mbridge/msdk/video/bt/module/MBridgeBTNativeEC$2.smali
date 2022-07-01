.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;
.super Ljava/lang/Object;
.source "MBridgeBTNativeEC.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->preLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$2;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 232
    return-void
.end method
