.class public final Lccsancom/mbridge/msdk/foundation/tools/i;
.super Ljava/lang/Object;
.source "MIMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/tools/i$b;,
        Lccsancom/mbridge/msdk/foundation/tools/i$a;
    }
.end annotation


# static fields
.field private static volatile d:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile e:Ljava/lang/Boolean;

.field private f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:I

.field private h:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->g:I

    .line 49
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/tools/i$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/tools/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/tools/i;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 3

    .line 269
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p1

    .line 273
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 275
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 276
    return-object v1

    .line 278
    :cond_1
    goto :goto_0

    .line 282
    :cond_2
    goto :goto_1

    .line 280
    :catch_0
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIMManager"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsancom/mbridge/msdk/foundation/tools/i$b;)Lccsancom/mbridge/msdk/foundation/tools/i$b;
    .locals 0

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    return-object p1
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/tools/i;
    .locals 1

    .line 54
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/tools/i;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/lang/Boolean;
    .locals 0

    .line 27
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/tools/i;->g()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/lang/Boolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/foundation/tools/i;)Lccsancom/mbridge/msdk/foundation/tools/i$b;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/foundation/tools/i;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private g()Ljava/lang/Boolean;
    .locals 10

    .line 173
    const-string v0, "MIMManager"

    .line 174
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_3

    .line 179
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v4

    const-string v1, "DFK/J75/JaEXWFfXYZP9LkcXYk3/YkcBLF5TWgSBYbHuH75BW3xuhr5UJj2tLkeNhrKFLkxQhl=="

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    move-object v1, v2

    .line 183
    :goto_0
    if-eqz v1, :cond_3

    .line 184
    :goto_1
    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v3, :cond_2

    .line 186
    :try_start_3
    const-string v3, "support"

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 187
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 193
    :cond_1
    goto :goto_2

    .line 191
    :catch_1
    move-exception v3

    .line 192
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 196
    :goto_2
    :try_start_5
    const-string v3, "detailStyle"

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 197
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsancom/mbridge/msdk/foundation/tools/i;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 200
    :goto_3
    goto :goto_1

    .line 198
    :catch_2
    move-exception v3

    .line 199
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 203
    :cond_2
    :try_start_7
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 206
    goto :goto_4

    .line 204
    :catch_3
    move-exception v1

    .line 205
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 209
    :catch_4
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 211
    :cond_3
    :goto_4
    nop

    .line 212
    :goto_5
    return-object v2
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;)V
    .locals 2

    .line 124
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->h:Lccsanandroid/content/Context;

    .line 125
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/i$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/i$1;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method final a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 410
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/i$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/tools/i$5;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 59
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIMManager"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void
.end method

.method final b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public final b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 94
    const-string v0, "MIMManager"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    :cond_0
    :goto_0
    goto :goto_1

    .line 102
    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 112
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->g:I

    .line 113
    return-void
.end method

.method public final d()V
    .locals 3

    .line 116
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->g:I

    .line 118
    if-gtz v0, :cond_0

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->h:Lccsanandroid/content/Context;

    .line 1152
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1154
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    :goto_0
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1159
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1160
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1161
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    .line 1162
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->h:Lccsanandroid/content/Context;

    .line 1163
    goto :goto_2

    .line 1158
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    :try_start_1
    const-string v2, "MIMManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1158
    :goto_1
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->f:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1159
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1160
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1161
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->b:Lccsancom/mbridge/msdk/foundation/tools/i$b;

    .line 1162
    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->h:Lccsanandroid/content/Context;

    .line 1163
    throw v0

    .line 121
    :cond_0
    :goto_2
    return-void
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/tools/i;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .line 217
    const-string v0, ""

    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/i;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lccsancom/mbridge/msdk/foundation/tools/i;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    return-object v0
.end method
