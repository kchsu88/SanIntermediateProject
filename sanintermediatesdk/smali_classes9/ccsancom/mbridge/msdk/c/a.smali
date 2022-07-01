.class public final Lccsancom/mbridge/msdk/c/a;
.super Ljava/lang/Object;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/c/a$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lccsancom/mbridge/msdk/foundation/entity/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lccsancom/mbridge/msdk/foundation/entity/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lccsancom/mbridge/msdk/foundation/db/d;

.field private h:Lccsancom/mbridge/msdk/videocommon/d/a;

.field private i:Lccsancom/mbridge/msdk/foundation/db/n;

.field private j:Lccsancom/mbridge/msdk/foundation/db/f;

.field private k:Lccsanandroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/c/a;->b:Z

    .line 31
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    .line 32
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    .line 34
    iput v0, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    iput v0, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/c/a$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/c/a$1;-><init>(Lccsancom/mbridge/msdk/c/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/c/a;->k:Lccsanandroid/os/Handler;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/c/a$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lccsancom/mbridge/msdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/c/a;J)V
    .locals 0

    .line 23
    nop

    .line 2121
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget p2, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    if-le p1, p2, :cond_0

    .line 2122
    goto :goto_0

    .line 2124
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget p1, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget p2, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    if-eq p1, p2, :cond_1

    .line 2125
    goto :goto_0

    .line 2127
    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    iput p1, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    .line 2128
    iget-object p0, p0, Lccsancom/mbridge/msdk/c/a;->k:Lccsanandroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 23
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 196
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {v1, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/adapter/d;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Z)V

    .line 203
    new-instance p1, Lccsancom/mbridge/msdk/c/a$2;

    invoke-direct {p1, p0, v1}, Lccsancom/mbridge/msdk/c/a$2;-><init>(Lccsancom/mbridge/msdk/c/a;Lccsancom/mbridge/msdk/reward/adapter/d;)V

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/b;)V

    .line 221
    const/4 p1, 0x1

    const/16 p2, 0x1f40

    const/4 p3, 0x0

    invoke-virtual {v1, p1, p2, p3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LoopTimer"

    invoke-static {p3, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/c/a;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/c/a;->b:Z

    return p0
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/h;)Z
    .locals 5

    .line 132
    nop

    .line 134
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 138
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 141
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->g:Lccsancom/mbridge/msdk/foundation/db/d;

    if-eqz v2, :cond_6

    .line 142
    const-wide/16 v2, 0x0

    .line 143
    iget-object v4, p0, Lccsancom/mbridge/msdk/c/a;->h:Lccsancom/mbridge/msdk/videocommon/d/a;

    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide v2

    .line 146
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/c/a;->g:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v4, p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;J)I

    move-result v2

    .line 147
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 156
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_2

    .line 149
    :pswitch_2
    nop

    .line 1247
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1248
    goto :goto_1

    .line 1250
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1251
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1252
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1253
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1255
    :cond_4
    :goto_0
    nop

    .line 1259
    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    if-eqz v2, :cond_5

    .line 1260
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :cond_5
    :goto_1
    nop

    .line 153
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->k:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    goto :goto_2

    .line 160
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 141
    :cond_6
    const/4 v0, 0x1

    .line 162
    :goto_2
    goto :goto_4

    .line 160
    :catchall_1
    move-exception p1

    const/4 v0, 0x1

    .line 161
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoopTimer"

    invoke-static {v2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :goto_4
    return v0

    .line 135
    :cond_7
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/c/a;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lccsancom/mbridge/msdk/c/a;->a:J

    return-wide v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/c/a;)V
    .locals 3

    .line 23
    nop

    .line 2169
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2170
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    iget v2, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/h;

    .line 2171
    iget v2, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lccsancom/mbridge/msdk/c/a;->e:I

    .line 2172
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/c/a;->a(Lccsancom/mbridge/msdk/foundation/entity/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2173
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lccsancom/mbridge/msdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2176
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2177
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    iget v2, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/h;

    .line 2178
    iget v2, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lccsancom/mbridge/msdk/c/a;->f:I

    .line 2179
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/c/a;->a(Lccsancom/mbridge/msdk/foundation/entity/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2180
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-direct {p0, v2, v0, v1}, Lccsancom/mbridge/msdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    :cond_1
    :goto_0
    goto :goto_1

    .line 2184
    :catchall_0
    move-exception p0

    .line 2185
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoopTimer"

    invoke-static {v1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_1
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/c/a;)Lccsanandroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lccsancom/mbridge/msdk/c/a;->k:Lccsanandroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 108
    nop

    .line 1073
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->j:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez v0, :cond_0

    .line 1074
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/c/a;->j:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 1078
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    if-nez v0, :cond_1

    .line 1079
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->j:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/n;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/n;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    .line 1082
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    const/16 v1, 0x11f

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/n;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    iget-object v1, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1085
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/h;

    .line 1086
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lccsancom/mbridge/msdk/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/n;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_3

    .line 1092
    iget-object v1, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/h;

    .line 1094
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lccsancom/mbridge/msdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    goto :goto_1

    .line 1098
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->g:Lccsancom/mbridge/msdk/foundation/db/d;

    if-nez v0, :cond_4

    .line 1099
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->j:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/c/a;->g:Lccsancom/mbridge/msdk/foundation/db/d;

    .line 1102
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->h:Lccsancom/mbridge/msdk/videocommon/d/a;

    if-nez v0, :cond_5

    .line 1103
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/c/a;->h:Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 109
    :cond_5
    iput-wide p1, p0, Lccsancom/mbridge/msdk/c/a;->a:J

    .line 110
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/c/a;->b:Z

    .line 111
    iget-object p1, p0, Lccsancom/mbridge/msdk/c/a;->k:Lccsanandroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p2

    iget-wide v0, p0, Lccsancom/mbridge/msdk/c/a;->a:J

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->c:Ljava/util/LinkedList;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/h;

    const/16 v2, 0x5e

    invoke-direct {v1, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->d:Ljava/util/LinkedList;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/h;

    const/16 v2, 0x11f

    invoke-direct {v1, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/c/a;->i:Lccsancom/mbridge/msdk/foundation/db/n;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    :cond_0
    return-void
.end method
