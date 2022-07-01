.class public abstract Lccsanenhance/f/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanenhance/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lccsanenhance/f/a;",
        "B:",
        "Lccsanenhance/f/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createTime:J

.field public taskId:Ljava/util/UUID;

.field public taskIntent:Lccsanenhance/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/f/a$a;->taskId:Ljava/util/UUID;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanenhance/f/a$a;->createTime:J

    .line 4
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->_initIntent()Lccsanenhance/b/b;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    .line 5
    invoke-direct {p0}, Lccsanenhance/f/a$a;->initIntent()V

    return-void
.end method

.method private initIntent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    iget-object v1, p0, Lccsanenhance/f/a$a;->taskId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanenhance/b/b;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    iget-wide v1, p0, Lccsanenhance/f/a$a;->createTime:J

    invoke-virtual {v0, v1, v2}, Lccsanenhance/b/b;->a(J)V

    .line 3
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    iget-wide v1, p0, Lccsanenhance/f/a$a;->createTime:J

    invoke-virtual {v0, v1, v2}, Lccsanenhance/b/b;->b(J)V

    return-void
.end method


# virtual methods
.method public abstract _builder()Lccsanenhance/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract _initIntent()Lccsanenhance/b/b;
.end method

.method public build()Lccsanenhance/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->_builder()Lccsanenhance/f/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract getThis()Lccsanenhance/f/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setActionName(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setCoverPath(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setDescription(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setIconPath(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->i(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setTriggerScene(Ljava/lang/String;)Lccsanenhance/f/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a$a;->taskIntent:Lccsanenhance/b/b;

    invoke-virtual {v0, p1}, Lccsanenhance/b/b;->j(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/a$a;->getThis()Lccsanenhance/f/a$a;

    move-result-object p1

    return-object p1
.end method
