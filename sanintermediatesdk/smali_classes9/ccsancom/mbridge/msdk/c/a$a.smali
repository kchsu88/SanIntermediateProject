.class final Lccsancom/mbridge/msdk/c/a$a;
.super Ljava/lang/Object;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lccsancom/mbridge/msdk/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/c/a;-><init>(Lccsancom/mbridge/msdk/c/a$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/c/a$a;->a:Lccsancom/mbridge/msdk/c/a;

    return-void
.end method
