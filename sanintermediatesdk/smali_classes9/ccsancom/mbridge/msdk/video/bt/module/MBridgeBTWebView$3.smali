.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$3;
.super Ljava/lang/Object;
.source "MBridgeBTWebView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->init(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 268
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->close()V

    .line 269
    return-void
.end method
