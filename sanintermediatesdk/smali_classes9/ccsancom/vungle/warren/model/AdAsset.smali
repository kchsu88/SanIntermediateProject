.class public Lccsancom/vungle/warren/model/AdAsset;
.super Ljava/lang/Object;
.source "AdAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/model/AdAsset$ErrorType;,
        Lccsancom/vungle/warren/model/AdAsset$FileType;,
        Lccsancom/vungle/warren/model/AdAsset$Status;
    }
.end annotation


# instance fields
.field public final adIdentifier:Ljava/lang/String;

.field public fileSize:J

.field public fileType:I

.field public final identifier:Ljava/lang/String;

.field public final localPath:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public retryCount:I

.field retryTypeError:I

.field public final serverPath:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "adIdentifier"    # Ljava/lang/String;
    .param p2, "serverPath"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "adIdentifier"    # Ljava/lang/String;
    .param p2, "serverPath"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p4, p0, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/vungle/warren/model/AdAsset;->retryCount:I

    .line 117
    iput v0, p0, Lccsancom/vungle/warren/model/AdAsset;->retryTypeError:I

    .line 118
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 123
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 125
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/model/AdAsset;

    .line 127
    .local v2, "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    iget v3, p0, Lccsancom/vungle/warren/model/AdAsset;->status:I

    iget v4, v2, Lccsancom/vungle/warren/model/AdAsset;->status:I

    if-eq v3, v4, :cond_2

    return v1

    .line 128
    :cond_2
    iget v3, p0, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    iget v4, v2, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    if-eq v3, v4, :cond_3

    return v1

    .line 129
    :cond_3
    iget-wide v3, p0, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    iget-wide v5, v2, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    return v1

    .line 130
    :cond_4
    iget v3, p0, Lccsancom/vungle/warren/model/AdAsset;->retryCount:I

    iget v4, v2, Lccsancom/vungle/warren/model/AdAsset;->retryCount:I

    if-eq v3, v4, :cond_5

    return v1

    .line 131
    :cond_5
    iget v3, p0, Lccsancom/vungle/warren/model/AdAsset;->retryTypeError:I

    iget v4, v2, Lccsancom/vungle/warren/model/AdAsset;->retryTypeError:I

    if-eq v3, v4, :cond_6

    return v1

    .line 132
    :cond_6
    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, v2, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v3, :cond_8

    :goto_0
    return v1

    .line 133
    :cond_8
    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v4, v2, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_9
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 134
    :goto_1
    return v1

    .line 135
    :cond_a
    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v4, v2, Lccsancom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_b
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v3, :cond_c

    :goto_2
    return v1

    .line 136
    :cond_c
    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v4, v2, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_d
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v3, :cond_e

    :goto_3
    return v1

    .line 137
    :cond_e
    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v0, v2, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_f
    iget-object v3, v2, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 123
    .end local v2    # "adAsset":Lccsancom/vungle/warren/model/AdAsset;
    :cond_11
    :goto_5
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 142
    iget-object v0, p0, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 144
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 145
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    .line 146
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    .line 147
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/AdAsset;->status:I

    add-int/2addr v1, v2

    .line 148
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    add-int/2addr v0, v2

    .line 149
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 150
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/AdAsset;->retryCount:I

    add-int/2addr v0, v2

    .line 151
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/vungle/warren/model/AdAsset;->retryTypeError:I

    add-int/2addr v1, v2

    .line 152
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdAsset{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/AdAsset;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/AdAsset;->fileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/vungle/warren/model/AdAsset;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/AdAsset;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTypeError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/vungle/warren/model/AdAsset;->retryTypeError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
