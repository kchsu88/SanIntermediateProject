.class public Lccsancom/mbridge/msdk/foundation/controller/a;
.super Ljava/lang/Object;
.source "MBSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/controller/a$b;,
        Lccsancom/mbridge/msdk/foundation/controller/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lccsancom/mbridge/msdk/foundation/controller/a;


# instance fields
.field private d:Lccsanandroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lccsanorg/json/JSONObject;

.field private i:I

.field private j:Z

.field private k:I

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/controller/a;->a:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/controller/a;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->g:I

    .line 46
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->j:Z

    .line 112
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/controller/a;)Lccsanandroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/controller/a;Ljava/lang/String;)V
    .locals 1

    .line 36
    nop

    .line 2249
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2250
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    const-string v0, "ga_id"

    invoke-static {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2254
    :cond_0
    goto :goto_0

    .line 2252
    :catch_0
    move-exception p0

    .line 2253
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/controller/a;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized d()Lccsancom/mbridge/msdk/foundation/controller/a;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/controller/a;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/controller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/a;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/controller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/a;

    .line 118
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/controller/a;->c:Lccsancom/mbridge/msdk/foundation/controller/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 79
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 59
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->i:I

    .line 60
    return-void
.end method

.method public final a(Lccsanandroid/content/Context;)V
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->l:Ljava/lang/ref/WeakReference;

    .line 89
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/controller/a$b;Lccsanandroid/os/Handler;)V
    .locals 2

    .line 131
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->j:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->h:Lccsanorg/json/JSONObject;

    .line 136
    const-string v0, "webgl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 140
    :goto_0
    nop

    .line 1259
    :try_start_1
    const-string p1, "-1"

    .line 1260
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    const-string v1, "ga_id"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1262
    check-cast v0, Ljava/lang/String;

    .line 1263
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1264
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object p1

    const-string v1, "authority_device_id"

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1265
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1271
    :cond_1
    goto :goto_1

    .line 1269
    :catch_1
    move-exception p1

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_1
    nop

    .line 2146
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lccsancom/mbridge/msdk/foundation/controller/a$1;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/foundation/controller/a$1;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a;Lccsanandroid/os/Handler;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2189
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 103
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->m:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 105
    const-string v1, "applicationIds"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_0
    return-void
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->h:Lccsanorg/json/JSONObject;

    .line 412
    return-void
.end method

.method public final b()Lccsanandroid/content/Context;
    .locals 1

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 127
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->k:I

    .line 128
    return-void
.end method

.method public final b(Lccsanandroid/content/Context;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    .line 198
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 217
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->e:Ljava/lang/String;

    .line 218
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 219
    const-string v1, "sp_appId"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    goto :goto_0

    .line 221
    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 402
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->g:I

    .line 403
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 238
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->f:Ljava/lang/String;

    .line 239
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 240
    const-string v1, "sp_appKey"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    :goto_0
    return-void
.end method

.method public final e()I
    .locals 1

    .line 123
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->k:I

    return v0
.end method

.method public final f()Lccsanandroid/content/Context;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 202
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->e:Ljava/lang/String;

    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v1, :cond_1

    .line 206
    const-string v2, "sp_appId"

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 210
    :cond_1
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :goto_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .line 227
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->f:Ljava/lang/String;

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->d:Lccsanandroid/content/Context;

    if-eqz v0, :cond_1

    .line 231
    const-string v1, "sp_appKey"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 398
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->g:I

    return v0
.end method

.method public final j()Lccsanorg/json/JSONObject;
    .locals 1

    .line 407
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a;->h:Lccsanorg/json/JSONObject;

    return-object v0
.end method
