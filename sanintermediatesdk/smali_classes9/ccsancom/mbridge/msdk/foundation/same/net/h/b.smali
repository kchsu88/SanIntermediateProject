.class public Lccsancom/mbridge/msdk/foundation/same/net/h/b;
.super Ljava/lang/Object;
.source "CommonAsyncHttpRequest.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a:Lccsanandroid/content/Context;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a:Lccsanandroid/content/Context;

    .line 49
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 1

    .line 131
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/n;->a()Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a(Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;

    .line 132
    return-void
.end method

.method private b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 4

    .line 166
    if-nez p3, :cond_0

    .line 167
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    move-object p3, v0

    .line 169
    :cond_0
    invoke-virtual {p0, p2, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 170
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->c(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 176
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 177
    const/4 v2, 0x0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->P()I

    move-result v2

    .line 181
    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 182
    return-void

    .line 183
    :cond_2
    if-ne v2, v1, :cond_5

    .line 184
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a()Lccsancom/mbridge/msdk/foundation/same/net/m;

    move-result-object p1

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 185
    return-void

    .line 187
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    if-eqz p3, :cond_4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 191
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a()Lccsancom/mbridge/msdk/foundation/db/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/a/a;->b()Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_6

    .line 193
    new-instance p3, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 194
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_5
    nop

    .line 197
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 198
    const-string v2, "application/x-www-form-urlencoded"

    const-string v3, "Content-Type"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 205
    :pswitch_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d/c;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 206
    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    goto :goto_2

    .line 210
    :pswitch_1
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d/d;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 211
    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    goto :goto_2

    .line 200
    :pswitch_2
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d/f;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 201
    invoke-virtual {v0, v3, v2}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    nop

    .line 218
    :goto_2
    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {v0, p4}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/l;)Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 220
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/n;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 222
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 6

    .line 76
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 77
    return-void
.end method

.method public final a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;Lccsancom/mbridge/msdk/foundation/same/net/l;)V
    .locals 7

    .line 146
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v1, ""

    if-nez v0, :cond_0

    .line 148
    move-object v0, v1

    .line 150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ts"

    invoke-virtual {p3, v4, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {p3, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz p5, :cond_1

    .line 154
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v5, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 158
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 6

    .line 81
    if-nez p3, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    move-object p3, v0

    .line 84
    :cond_0
    invoke-virtual {p0, p2, p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 85
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->c(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 86
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const-string v1, ""

    if-nez v0, :cond_1

    .line 88
    move-object v0, v1

    .line 90
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    const-string v4, "ts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v4, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    .line 95
    invoke-interface {p5, v0}, Lccsancom/mbridge/msdk/foundation/same/net/e;->a(Lccsancom/mbridge/msdk/foundation/same/net/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    return-void

    .line 101
    :cond_2
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    nop

    .line 106
    const/4 p3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 112
    :pswitch_0
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/d/c;

    invoke-direct {p1, p3, p2, v0, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 113
    move-object v0, p1

    goto :goto_1

    .line 116
    :pswitch_1
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/d/d;

    invoke-direct {p1, p3, p2, v0, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 117
    move-object v0, p1

    goto :goto_1

    .line 108
    :pswitch_2
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/d/f;

    invoke-direct {p1, p3, p2, v0, p5}, Lccsancom/mbridge/msdk/foundation/same/net/d/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 109
    move-object v0, p1

    .line 123
    :goto_1
    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {v0, p4}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/l;)Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 125
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/n;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 128
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 4

    .line 52
    if-eqz p2, :cond_2

    .line 53
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a;->t:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/Aa;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, ""

    if-nez v0, :cond_0

    .line 56
    move-object v0, v1

    .line 58
    :cond_0
    const-string v2, "channel"

    invoke-virtual {p2, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/a;->a()Lccsancom/mbridge/msdk/foundation/same/net/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "band_width"

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lccsancom/mbridge/msdk/out/CustomInfoManager;->getInstance()Lccsancom/mbridge/msdk/out/CustomInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "ch_info"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "u_stid"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    return-void
.end method

.method public final b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 8

    .line 135
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    const-string v1, ""

    if-nez v0, :cond_0

    .line 137
    move-object v0, v1

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ts"

    invoke-virtual {p3, v4, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {p3, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v6, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 143
    return-void
.end method

.method public final c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 6

    .line 161
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/foundation/same/net/b;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/l;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 162
    return-void
.end method
