.class public Lccsancom/mbridge/msdk/b/c;
.super Ljava/lang/Object;
.source "SettingRequestController.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lccsancom/mbridge/msdk/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lccsancom/mbridge/msdk/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/b/c;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/b/c;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 82
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a()Z

    move-result v0

    .line 83
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 84
    nop

    .line 1092
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->n:Z

    if-eqz v0, :cond_0

    .line 1093
    goto/16 :goto_1

    .line 1095
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->n:Z

    .line 1096
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "mkey_spare_host_ts"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    const/4 v0, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 1098
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    const-string v2, "mkey_spare_host"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1100
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1101
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 1102
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v4

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1103
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v4

    iget-object v4, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/b/c;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    goto :goto_1

    .line 1111
    :cond_3
    nop

    .line 1112
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/h/b;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;-><init>(Lccsanandroid/content/Context;)V

    .line 1113
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget-object v2, v2, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->l:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lccsancom/mbridge/msdk/b/c$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/b/c$2;-><init>(Lccsancom/mbridge/msdk/b/c;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    goto :goto_1

    .line 1135
    :catchall_0
    move-exception p1

    .line 1136
    sget-object p2, Lccsancom/mbridge/msdk/b/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_1
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/b/a/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/b/a/b;-><init>(Lccsanandroid/content/Context;)V

    .line 38
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 39
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign"

    invoke-virtual {v1, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    new-instance v4, Lccsancom/mbridge/msdk/b/c$1;

    invoke-direct {v4, p0, p2, p1, p3}, Lccsancom/mbridge/msdk/b/c$1;-><init>(Lccsancom/mbridge/msdk/b/c;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lccsancom/mbridge/msdk/b/a/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 79
    return-void
.end method

.method public final a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 144
    nop

    .line 145
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    nop

    .line 147
    nop

    .line 148
    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object p3

    .line 152
    nop

    .line 154
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0, p4, p2}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1, p4}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lccsancom/mbridge/msdk/b/a/b;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/b/a/b;-><init>(Lccsanandroid/content/Context;)V

    .line 157
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "unit_ids"

    invoke-virtual {p1, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "app_id"

    invoke-virtual {p1, v1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "sign"

    invoke-virtual {p1, v1, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 p3, 0x1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    new-instance v2, Lccsancom/mbridge/msdk/b/c$3;

    invoke-direct {v2, p0, p2, p4}, Lccsancom/mbridge/msdk/b/c$3;-><init>(Lccsancom/mbridge/msdk/b/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1, p1, v2}, Lccsancom/mbridge/msdk/b/a/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 187
    :cond_1
    return-void
.end method
