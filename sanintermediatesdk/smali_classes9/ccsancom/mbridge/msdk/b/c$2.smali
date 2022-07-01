.class final Lccsancom/mbridge/msdk/b/c$2;
.super Lccsancom/mbridge/msdk/foundation/same/net/b/a;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic g:Lccsancom/mbridge/msdk/b/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/b/c;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/c$2;->g:Lccsancom/mbridge/msdk/b/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/c$2;->a:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/mbridge/msdk/b/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/b/c$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 116
    invoke-static {}, Lccsancom/mbridge/msdk/b/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch CNDSettingHost success, content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "mkey_spare_host_ts"

    invoke-virtual {v0, v3, v1, v2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;J)V

    .line 119
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "mkey_spare_host"

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/c$2;->g:Lccsancom/mbridge/msdk/b/c;

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/c$2;->a:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/c$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/c$2;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/b/c;->a(Lccsancom/mbridge/msdk/b/c;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 132
    invoke-static {}, Lccsancom/mbridge/msdk/b/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch CNDSettingHost failed, errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
