.class public Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;
.super Ljava/lang/Object;
.source "MBTempContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;->a:Z

    .line 157
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 163
    const-string v0, "ActivityErrorListener"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;->a:Z

    .line 165
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;->a:Z

    .line 175
    return-void
.end method
