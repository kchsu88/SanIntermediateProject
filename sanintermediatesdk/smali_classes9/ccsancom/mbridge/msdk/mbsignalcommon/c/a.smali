.class public final Lccsancom/mbridge/msdk/mbsignalcommon/c/a;
.super Ljava/lang/Object;
.source "Mapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;,
        Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;,
        Lccsancom/mbridge/msdk/mbsignalcommon/c/a$a;,
        Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b;
    }
.end annotation


# static fields
.field private static a:Lccsancom/mbridge/msdk/mbsignalcommon/c/a$a;


# direct methods
.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    .line 246
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    move-exception p0

    .line 248
    new-instance p1, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->b(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    .line 249
    new-instance p0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->b(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V

    return-void
.end method

.method private static b(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;
        }
    .end annotation

    .line 254
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/c/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-void

    .line 254
    :cond_0
    throw p0
.end method
