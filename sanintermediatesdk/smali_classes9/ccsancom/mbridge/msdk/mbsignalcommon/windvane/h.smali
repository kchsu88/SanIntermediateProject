.class public abstract Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.super Ljava/lang/Object;
.source "WindVanePlugin.java"


# instance fields
.field protected a:Lccsanandroid/content/Context;

.field protected b:Ljava/lang/Object;

.field protected c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->a:Lccsanandroid/content/Context;

    .line 15
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 16
    return-void
.end method

.method public initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->b:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 21
    return-void
.end method
