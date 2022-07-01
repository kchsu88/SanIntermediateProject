.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser;
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
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field public final objects:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

.field public final regions:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    .line 819
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    .line 820
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    .line 821
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    .line 822
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    .line 828
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 829
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 830
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 833
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 834
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 835
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 836
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 837
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    .line 839
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/dvb/DvbParser$PageComposition;

    .line 840
    return-void
.end method
