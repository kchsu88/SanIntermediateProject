.class public final Lccsancom/mbridge/msdk/video/bt/module/b/e;
.super Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;
.source "ReportBTContainerErrorListener.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/bt/module/b/h;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/b/h;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;-><init>()V

    .line 9
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/e;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/e;->a:Lccsancom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method
