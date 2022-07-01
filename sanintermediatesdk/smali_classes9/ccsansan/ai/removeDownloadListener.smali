.class public Lccsansan/ai/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ai/removeDownloadListener$getDownloadingList;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:J

.field private deleteDownItem:J

.field private getDownloadedRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;

.field private unifiedDownload:Lccsansan/ai/removeDownloadListener$getDownloadingList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lccsansan/ai/removeDownloadListener$getDownloadingList;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils:J

    .line 6
    iput-object p4, p0, Lccsansan/ai/removeDownloadListener;->unifiedDownload:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    .line 7
    iput-wide p5, p0, Lccsansan/ai/removeDownloadListener;->addDownloadListener:J

    .line 8
    iput-object p7, p0, Lccsansan/ai/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 10
    iput-wide p9, p0, Lccsansan/ai/removeDownloadListener;->deleteDownItem:J

    .line 11
    iput-object p11, p0, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/ai/removeDownloadListener$getDownloadingList;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lccsansan/ai/unifiedDownload;->IncentiveDownloadUtils()J

    move-result-wide v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lccsansan/ai/removeDownloadListener;-><init>(Ljava/lang/String;JLccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lccsansan/ai/removeDownloadListener$getDownloadingList;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/ai/removeDownloadListener$getDownloadingList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/bw/AdFormat;->unifiedDownload()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lccsansan/ai/removeDownloadListener;-><init>(Lccsansan/ai/removeDownloadListener$getDownloadingList;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method public static removeDownloadListener(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/ai/removeDownloadListener;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/ai/removeDownloadListener;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lccsansan/ai/removeDownloadListener;->getDownloadedList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ai/removeDownloadListener;->addDownloadListener:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method public deleteDownItem()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    const-string v1, "test"

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getDownloadStatusByUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadedList()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-wide v1, p0, Lccsansan/ai/removeDownloadListener;->addDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ai/removeDownloadListener;->unifiedDownload:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    .line 3
    invoke-virtual {v2}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ai/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 4
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 5
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lccsansan/ai/removeDownloadListener;->deleteDownItem:J

    .line 6
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 10
    iget-object v4, p0, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    const/16 v5, 0x1f

    if-eqz v4, :cond_5

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 12
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    iget-object v6, p0, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event out of count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/ai/removeDownloadListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SanStats.EventEntity"

    invoke-static {v7, v6}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-ge v2, v4, :cond_5

    .line 19
    iget-object v6, p0, Lccsansan/ai/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/util/Pair;

    .line 20
    iget-object v7, v6, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 21
    iget-object v6, v6, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v7, :cond_4

    if-nez v6, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    :goto_3
    nop

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    if-ge v2, v5, :cond_6

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/ai/removeDownloadListener;->IncentiveDownloadUtils:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedRecordByUrl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/ai/removeDownloadListener;->deleteDownItem:J

    return-wide v0
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventEntity [mCommitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/removeDownloadListener;->unifiedDownload:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/ai/removeDownloadListener;->addDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ai/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/ai/removeDownloadListener;->deleteDownItem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()Lccsansan/ai/removeDownloadListener$getDownloadingList;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ai/removeDownloadListener;->unifiedDownload:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    return-object v0
.end method
