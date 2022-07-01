.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation


# instance fields
.field private allowMixedMimeAdaptiveness:Z

.field private allowNonSeamlessAdaptiveness:Z

.field private disabledTextTrackSelectionFlags:I

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private forceLowestBitrate:Z

.field private maxVideoBitrate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private preferredAudioLanguage:Ljava/lang/String;

.field private preferredTextLanguage:Ljava/lang/String;

.field private final rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

.field private selectUndeterminedTextLanguage:Z

.field private final selectionOverrides:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 184
    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->cloneSelectionOverrides(Lccsanandroid/util/SparseArray;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    .line 192
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsanandroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/util/SparseBooleanArray;->clone()Lccsanandroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    .line 193
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioLanguage:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextLanguage:Ljava/lang/String;

    .line 195
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectUndeterminedTextLanguage:Z

    .line 196
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    .line 197
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    .line 198
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMixedMimeAdaptiveness:Z

    .line 199
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowNonSeamlessAdaptiveness:Z

    .line 200
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    .line 201
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    .line 202
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    .line 203
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    .line 204
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 205
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 206
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 207
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    .line 208
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private static cloneSelectionOverrides(Lccsanandroid/util/SparseArray;)Lccsanandroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 536
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 537
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 538
    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 22

    .line 513
    move-object/from16 v0, p0

    new-instance v20, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v20

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectUndeterminedTextLanguage:Z

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    iget-boolean v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    iget-boolean v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMixedMimeAdaptiveness:Z

    iget-boolean v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowNonSeamlessAdaptiveness:Z

    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    iget v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    iget v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    iget-boolean v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    move-object/from16 v21, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    move/from16 v16, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    move/from16 v17, v1

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    move/from16 v18, v1

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    move/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseBooleanArray;Ljava/lang/String;Ljava/lang/String;ZIZZZIIIZZIIZI)V

    return-object v20
.end method

.method public final clearSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 452
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 453
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 459
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {p2, p1}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 461
    :cond_1
    return-object p0

    .line 455
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final clearSelectionOverrides()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 481
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return-object p0

    .line 485
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 486
    return-object p0
.end method

.method public final clearSelectionOverrides(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 470
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 471
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 476
    return-object p0

    .line 473
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final clearVideoSizeConstraints()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 298
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearViewportSizeConstraints()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 366
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setAllowMixedMimeAdaptiveness(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 269
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMixedMimeAdaptiveness:Z

    .line 270
    return-object p0
.end method

.method public final setAllowNonSeamlessAdaptiveness(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 279
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowNonSeamlessAdaptiveness:Z

    .line 280
    return-object p0
.end method

.method public final setDisabledTextTrackSelectionFlags(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 249
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    .line 250
    return-object p0
.end method

.method public final setExceedRendererCapabilitiesIfNecessary(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 340
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 341
    return-object p0
.end method

.method public final setExceedVideoConstraintsIfNecessary(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    .line 330
    return-object p0
.end method

.method public final setForceLowestBitrate(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->forceLowestBitrate:Z

    .line 260
    return-object p0
.end method

.method public final setMaxVideoBitrate(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 318
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoBitrate:I

    .line 319
    return-object p0
.end method

.method public final setMaxVideoSize(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 307
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoWidth:I

    .line 308
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->maxVideoHeight:I

    .line 309
    return-object p0
.end method

.method public final setMaxVideoSizeSd()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 289
    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setPreferredAudioLanguage(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 217
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredAudioLanguage:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public final setPreferredTextLanguage(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 227
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->preferredTextLanguage:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public final setRendererDisabled(IZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 394
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 396
    return-object p0

    .line 399
    :cond_0
    if-eqz p2, :cond_1

    .line 400
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lccsanandroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Lccsanandroid/util/SparseBooleanArray;->delete(I)V

    .line 404
    :goto_0
    return-object p0
.end method

.method public final setSelectUndeterminedTextLanguage(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 238
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectUndeterminedTextLanguage:Z

    .line 239
    return-object p0
.end method

.method public final setSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 431
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 432
    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    return-object p0

    .line 440
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-object p0
.end method

.method public final setTunnelingAudioSessionId(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 502
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_0

    .line 503
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingAudioSessionId:I

    .line 504
    return-object p0

    .line 506
    :cond_0
    return-object p0
.end method

.method public final setViewportSize(IIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 380
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportWidth:I

    .line 381
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportHeight:I

    .line 382
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->viewportOrientationMayChange:Z

    .line 383
    return-object p0
.end method

.method public final setViewportSizeToPhysicalDisplaySize(Lccsanandroid/content/Context;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 355
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPhysicalDisplaySize(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;

    move-result-object p1

    .line 356
    iget v0, p1, Lccsanandroid/graphics/Point;->x:I

    iget p1, p1, Lccsanandroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method
