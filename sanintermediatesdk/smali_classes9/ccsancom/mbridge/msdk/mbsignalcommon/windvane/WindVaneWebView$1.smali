.class final Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;
.super Ljava/lang/Object;
.source "WindVaneWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Z)Z

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$1;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->destroy()V

    .line 163
    return-void
.end method
