.class final Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageComposition"
.end annotation


# instance fields
.field public final regions:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILccsanandroid/util/SparseArray;)V
    .locals 0
    .param p1, "timeoutSecs"    # I
    .param p2, "version"    # I
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;",
            ">;)V"
        }
    .end annotation

    .line 985
    .local p4, "regions":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput p1, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    .line 987
    iput p2, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    .line 988
    iput p3, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    .line 989
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Lccsanandroid/util/SparseArray;

    .line 990
    return-void
.end method
