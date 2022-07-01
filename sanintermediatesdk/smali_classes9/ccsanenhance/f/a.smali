.class public abstract Lccsanenhance/f/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanenhance/f/a$a;
    }
.end annotation


# instance fields
.field private taskId:Ljava/util/UUID;

.field private taskIntent:Lccsanenhance/b/b;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lccsanenhance/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsanenhance/f/a;->taskId:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    return-void
.end method


# virtual methods
.method public getTaskIntent()Lccsanenhance/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task\n[createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 2
    invoke-virtual {v1}, Lccsanenhance/b/b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n,packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 3
    invoke-virtual {v1}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,iconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 4
    invoke-virtual {v1}, Lccsanenhance/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,coverPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 5
    invoke-virtual {v1}, Lccsanenhance/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 6
    invoke-virtual {v1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 7
    invoke-virtual {v1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,actionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 8
    invoke-virtual {v1}, Lccsanenhance/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,triggerScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/f/a;->taskIntent:Lccsanenhance/b/b;

    .line 9
    invoke-virtual {v1}, Lccsanenhance/b/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
