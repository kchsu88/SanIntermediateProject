.class final Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleService"
.end annotation


# instance fields
.field public final ancillaryCluts:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field public final objects:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

.field public final regions:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "subtitlePageId"    # I
    .param p2, "ancillaryPageId"    # I

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput p1, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 922
    iput p2, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 923
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    .line 924
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    .line 925
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    .line 926
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    .line 927
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    .line 928
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 931
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 932
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 933
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 934
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 935
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 937
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 938
    return-void
.end method
