.class public Lccsancom/mbridge/msdk/video/module/a/a/i;
.super Lccsancom/mbridge/msdk/video/module/a/a/f;
.source "ProxyOnNotifyListener.java"


# instance fields
.field protected b:Lccsancom/mbridge/msdk/video/module/a/a;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/a/a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/module/a/a/f;-><init>()V

    .line 10
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/i;->b:Lccsancom/mbridge/msdk/video/module/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 15
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/i;->b:Lccsancom/mbridge/msdk/video/module/a/a;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-void
.end method
