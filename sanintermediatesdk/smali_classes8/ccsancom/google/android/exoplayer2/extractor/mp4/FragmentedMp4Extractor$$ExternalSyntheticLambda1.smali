.class public final synthetic Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    check-cast p1, Lccsancom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->modifyTrack(Lccsancom/google/android/exoplayer2/extractor/mp4/Track;)Lccsancom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method
