.class public final Lccsancom/mbridge/msdk/foundation/tools/q;
.super Ljava/lang/Object;
.source "SameLogTool.java"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->a:Z

    .line 14
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->b:Z

    .line 15
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->c:Z

    .line 16
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->d:Z

    .line 17
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->e:Z

    .line 18
    const/4 v1, 0x0

    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->f:Z

    .line 19
    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->g:Z

    .line 20
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->h:Z

    .line 23
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-nez v0, :cond_0

    .line 24
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->a:Z

    .line 25
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->b:Z

    .line 26
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->c:Z

    .line 27
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->d:Z

    .line 28
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->e:Z

    .line 29
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->f:Z

    .line 30
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->g:Z

    .line 31
    sput-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/q;->h:Z

    .line 33
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBRIDGE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->b:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 183
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->c:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->d:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    sget-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/q;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method
