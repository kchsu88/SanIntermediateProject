.class public Lccsanenhance/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanenhance/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsanenhance/b/b$a;

    invoke-direct {v0}, Lccsanenhance/b/b$a;-><init>()V

    sput-object v0, Lccsanenhance/b/b;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    .line 9
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsanenhance/b/b;->c:J

    .line 11
    iput-wide v1, p0, Lccsanenhance/b/b;->d:J

    .line 13
    iput-object v0, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    .line 33
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsanenhance/b/b;->c:J

    .line 35
    iput-wide v1, p0, Lccsanenhance/b/b;->d:J

    .line 37
    iput-object v0, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanenhance/b/b;->c:J

    .line 236
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanenhance/b/b;->d:J

    .line 237
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanenhance/b/b;->m:J

    .line 246
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanenhance/b/b;->n:J

    .line 247
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanenhance/b/b;->o:I

    .line 248
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanenhance/b/b;->p:I

    .line 249
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsanenhance/b/b;->q:I

    .line 250
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lccsanenhance/b/b;->r:I

    return-void
.end method

.method public synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsanenhance/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanenhance/b/b;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lccsanenhance/b/b;->p:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsanenhance/b/b;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lccsanenhance/b/b;->q:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsanenhance/b/b;->d:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 4
    iget v0, p0, Lccsanenhance/b/b;->p:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lccsanenhance/b/b;->o:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsanenhance/b/b;->m:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 3
    iget v0, p0, Lccsanenhance/b/b;->q:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 4
    iput p1, p0, Lccsanenhance/b/b;->r:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsanenhance/b/b;->n:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsanenhance/b/b;->c:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsanenhance/b/b;->d:J

    return-wide v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method public j()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lccsanenhance/b/b;->m:J

    return-wide v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    return-void
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsanenhance/b/b;->n:J

    return-wide v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lccsanenhance/b/b;->o:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lccsanenhance/b/b;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskIntent  \n[taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,taskState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsanenhance/b/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n,lastSubmitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsanenhance/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n,packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,iconPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,coverPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,actionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,triggerScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,actionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n,launchActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsanenhance/b/b;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n,launchSucceedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsanenhance/b/b;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n,networkConnectedRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanenhance/b/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n,activityResumedRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanenhance/b/b;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n,activityStoppedRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanenhance/b/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n,userPresentRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanenhance/b/b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lccsanenhance/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lccsanenhance/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lccsanenhance/b/b;->c:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lccsanenhance/b/b;->d:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object p2, p0, Lccsanenhance/b/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lccsanenhance/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lccsanenhance/b/b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lccsanenhance/b/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lccsanenhance/b/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lccsanenhance/b/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lccsanenhance/b/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lccsanenhance/b/b;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lccsanenhance/b/b;->m:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-wide v0, p0, Lccsanenhance/b/b;->n:J

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->writeLong(J)V

    .line 15
    iget p2, p0, Lccsanenhance/b/b;->o:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lccsanenhance/b/b;->p:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lccsanenhance/b/b;->q:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lccsanenhance/b/b;->r:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    return-void
.end method
