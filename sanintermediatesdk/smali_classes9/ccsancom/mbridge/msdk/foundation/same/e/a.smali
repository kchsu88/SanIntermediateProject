.class public abstract Lccsancom/mbridge/msdk/foundation/same/e/a;
.super Ljava/lang/Object;
.source "CommonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/e/a$b;,
        Lccsancom/mbridge/msdk/foundation/same/e/a$a;
    }
.end annotation


# static fields
.field public static b:J


# instance fields
.field public c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field public d:Lccsancom/mbridge/msdk/foundation/same/e/a$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->a:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/a;->c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    .line 30
    sget-wide v0, Lccsancom/mbridge/msdk/foundation/same/e/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lccsancom/mbridge/msdk/foundation/same/e/a;->b:J

    .line 31
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/e/a;->c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$b;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/e/a$b;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final d()V
    .locals 2

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/a;->c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-eq v0, v1, :cond_0

    .line 43
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V

    .line 44
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->b()V

    .line 46
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 19
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/a;->c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->a:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    if-ne v0, v1, :cond_0

    .line 20
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->b:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V

    .line 21
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->a()V

    .line 22
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_0
    return-void
.end method
