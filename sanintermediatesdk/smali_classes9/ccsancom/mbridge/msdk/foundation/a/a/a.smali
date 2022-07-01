.class public Lccsancom/mbridge/msdk/foundation/a/a/a;
.super Ljava/lang/Object;
.source "SharedPerferenceManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lccsancom/mbridge/msdk/foundation/a/a/a;


# instance fields
.field b:Lccsanandroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lccsancom/mbridge/msdk/foundation/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/foundation/a/a/a;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/a/a/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/a/a/a;->c:Lccsancom/mbridge/msdk/foundation/a/a/a;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lccsancom/mbridge/msdk/foundation/a/a/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/a/a/a;->c:Lccsancom/mbridge/msdk/foundation/a/a/a;

    .line 30
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/a/a/a;->c:Lccsancom/mbridge/msdk/foundation/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .line 104
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    .line 105
    if-nez v2, :cond_0

    .line 106
    sget-object p1, Lccsancom/mbridge/msdk/foundation/a/a/a;->a:Ljava/lang/String;

    const-string v2, "context is null in get"

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 110
    const-string v3, "mbridge"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 113
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lccsanandroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 114
    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .line 52
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 57
    const-string v1, "mbridge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 59
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 3

    .line 86
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    sget-object p1, Lccsancom/mbridge/msdk/foundation/a/a/a;->a:Ljava/lang/String;

    const-string p2, "context is null in put"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 92
    const-string v1, "mbridge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 94
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lccsanandroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 35
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 40
    const-string v1, "mbridge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 42
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 3

    .line 123
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    return p2

    .line 127
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 128
    const-string v1, "mbridge"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 131
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    return p2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 140
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 141
    if-nez v1, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 145
    const-string v2, "mbridge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 148
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lccsanandroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 173
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 179
    const/4 v1, 0x0

    const-string v2, "mbridge"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    .line 182
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/a/a/a;->b:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsanandroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void
.end method
