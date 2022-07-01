.class final Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

.field final synthetic e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/a;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 141
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/a;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    const-string v3, "banner load failed because env is exception"

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->e:Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->d:Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/a$2;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 148
    return-void
.end method
