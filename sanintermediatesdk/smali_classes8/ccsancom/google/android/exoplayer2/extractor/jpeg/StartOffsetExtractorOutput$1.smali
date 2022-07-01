.class Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->seekMap(Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

.field final synthetic val$seekMap:Lccsancom/google/android/exoplayer2/extractor/SeekMap;


# direct methods
.method constructor <init>(Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lccsancom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 55
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 63
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 10
    .param p1, "timeUs"    # J

    .line 68
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 69
    .local v0, "seekPoints":Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v2, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v3, v3, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v5, v0, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v5, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 70
    invoke-static {v7}, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    new-instance v3, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v4, v0, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v4, v4, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v6, v0, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lccsancom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v6, v6, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object v8, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 71
    invoke-static {v8}, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2, v3}, Lccsancom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lccsancom/google/android/exoplayer2/extractor/SeekPoint;Lccsancom/google/android/exoplayer2/extractor/SeekPoint;)V

    .line 69
    return-object v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lccsancom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method
