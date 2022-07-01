.class public final Lccsancom/mbridge/msdk/click/b;
.super Ljava/lang/Object;
.source "CommonClickUtil.java"


# static fields
.field static a:Lccsanandroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lccsancom/mbridge/msdk/click/b$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/click/b$1;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/mbridge/msdk/click/b;->a:Lccsanandroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 278
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    return-object p0

    .line 282
    :cond_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->L()Ljava/util/Map;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_2

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/b/a$a;

    .line 292
    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a$a;->d()Ljava/util/List;

    move-result-object v1

    .line 294
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 295
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a$a;->c()Ljava/util/List;

    move-result-object v1

    .line 297
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 298
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a$a;->a()Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-static {p0, v1, p1}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a$a;->b()Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_1

    .line 306
    :cond_1
    goto :goto_0

    .line 311
    :cond_2
    :goto_1
    goto :goto_2

    .line 309
    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :goto_2
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 266
    if-eqz p1, :cond_1

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 271
    :cond_0
    goto :goto_0

    .line 273
    :cond_1
    return-object p0
.end method

.method public static a(Lccsanandroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 316
    if-nez p1, :cond_0

    .line 317
    return-void

    .line 321
    :cond_0
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lccsancom/mbridge/msdk/click/b$2;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/click/b$2;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    goto :goto_0

    .line 337
    :catchall_0
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonClickUtil"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 117
    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    const/high16 v1, 0x10000000

    :try_start_0
    new-instance v2, Lccsanandroid/content/Intent;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 121
    invoke-virtual {v2, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_1

    .line 124
    iget-object v4, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    iget-object v3, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v3, v3, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 127
    :cond_1
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :try_start_1
    new-instance v2, Lccsanandroid/content/Intent;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 132
    invoke-virtual {v2, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 133
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_0

    .line 134
    :catch_1
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :goto_0
    return-void

    .line 118
    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z
    .locals 2

    .line 226
    :try_start_0
    instance-of v0, p0, Lccsanandroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 228
    return v1

    .line 231
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/a;->b()Lccsanandroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 232
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/a;->b()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    return v1

    .line 237
    :cond_1
    goto :goto_0

    .line 235
    :catchall_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonClickUtil"

    invoke-static {v0, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 141
    const-string v0, "CommonClickUtil"

    const-string v1, "com.mbridge.msdk.activity.MBCommonActivity"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 146
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    new-instance v2, Lccsanandroid/content/Intent;

    invoke-direct {v2, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string v1, "url"

    invoke-virtual {v2, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 149
    instance-of p1, p0, Lccsanandroid/view/ContextThemeWrapper;

    if-nez p1, :cond_1

    .line 150
    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 152
    :cond_1
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    nop

    .line 158
    :goto_1
    return-void

    .line 142
    :cond_2
    :goto_2
    return-void
.end method

.method public static c(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 185
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 190
    if-eqz p0, :cond_1

    .line 191
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 193
    :cond_1
    return v0

    .line 195
    :catch_0
    move-exception p0

    .line 196
    return v0

    .line 186
    :cond_2
    :goto_0
    return v0
.end method

.method public static d(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 201
    nop

    .line 203
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 204
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 205
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 206
    invoke-virtual {v1, p1}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 208
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v3, "L7QthdSsLkP8"

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    return v2

    .line 214
    :cond_0
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 215
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v0, 0x1

    .line 220
    :cond_1
    goto :goto_0

    .line 218
    :catchall_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonClickUtil"

    invoke-static {v1, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    return v0
.end method

.method public static e(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 243
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/click/b;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/pm/ResolveInfo;

    .line 250
    if-eqz p1, :cond_0

    .line 251
    new-instance v0, Lccsanandroid/content/ComponentName;

    iget-object v1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object p1, p1, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1}, Lccsanandroid/content/Intent;-><init>()V

    .line 253
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 254
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 255
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    goto :goto_0

    .line 260
    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    :goto_0
    return-void
.end method
