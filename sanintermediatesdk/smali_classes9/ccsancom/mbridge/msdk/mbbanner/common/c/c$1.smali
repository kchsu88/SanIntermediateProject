.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$1;
.super Lccsanandroid/os/Handler;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$1;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 88
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    .line 93
    return-void
.end method
