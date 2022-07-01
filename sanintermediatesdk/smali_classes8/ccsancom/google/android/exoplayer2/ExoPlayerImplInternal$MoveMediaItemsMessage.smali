.class Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveMediaItemsMessage"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Lccsancom/google/android/exoplayer2/source/ShuffleOrder;

.field public final toIndex:I


# direct methods
.method public constructor <init>(IIILccsancom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "newFromIndex"    # I
    .param p4, "shuffleOrder"    # Lccsancom/google/android/exoplayer2/source/ShuffleOrder;

    .line 3023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3024
    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    .line 3025
    iput p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    .line 3026
    iput p3, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    .line 3027
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lccsancom/google/android/exoplayer2/source/ShuffleOrder;

    .line 3028
    return-void
.end method
