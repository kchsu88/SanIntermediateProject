.class public Lccsancom/mbridge/msdk/c/b;
.super Ljava/lang/Object;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/c/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/c/b$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lccsancom/mbridge/msdk/c/b;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/c/b;
    .locals 1

    .line 16
    sget-object v0, Lccsancom/mbridge/msdk/c/b$a;->a:Lccsancom/mbridge/msdk/c/b;

    return-object v0
.end method


# virtual methods
.method public addInterstitialList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2068
    sget-object v0, Lccsancom/mbridge/msdk/c/a$a;->a:Lccsancom/mbridge/msdk/c/a;

    .line 24
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public addRewardList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1068
    sget-object v0, Lccsancom/mbridge/msdk/c/a$a;->a:Lccsancom/mbridge/msdk/c/a;

    .line 20
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public start()V
    .locals 4

    .line 28
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->d()I

    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 3068
    sget-object v1, Lccsancom/mbridge/msdk/c/a$a;->a:Lccsancom/mbridge/msdk/c/a;

    .line 34
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/c/a;->a(J)V

    .line 36
    :cond_1
    return-void
.end method
