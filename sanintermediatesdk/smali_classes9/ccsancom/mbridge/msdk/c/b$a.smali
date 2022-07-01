.class final Lccsancom/mbridge/msdk/c/b$a;
.super Ljava/lang/Object;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lccsancom/mbridge/msdk/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lccsancom/mbridge/msdk/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/c/b;-><init>(Lccsancom/mbridge/msdk/c/b$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/c/b$a;->a:Lccsancom/mbridge/msdk/c/b;

    return-void
.end method
