.class final Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source "TextEmphasis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis$Position;
    }
.end annotation


# static fields
.field private static final MARK_FILL_VALUES:Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_SHAPE_AUTO:I = -0x1

.field private static final MARK_SHAPE_VALUES:Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_OUTSIDE:I = -0x2

.field private static final POSITION_VALUES:Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SINGLE_STYLE_VALUES:Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    nop

    .line 78
    const-string v0, "auto"

    const-string v1, "none"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    .line 80
    nop

    .line 81
    const-string v0, "dot"

    const-string/jumbo v1, "sesame"

    const-string v2, "circle"

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    .line 86
    nop

    .line 87
    const-string v0, "filled"

    const-string v1, "open"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    .line 89
    nop

    .line 90
    const-string v0, "after"

    const-string v1, "before"

    const-string v2, "outside"

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    .line 89
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "markShape"    # I
    .param p2, "markFill"    # I
    .param p3, "position"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    .line 109
    iput p2, p0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    .line 110
    iput p3, p0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    .line 111
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 132
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "parsingValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    return-object v0

    .line 140
    :cond_1
    sget-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->parseWords(Lccsancom/google/common/collect/ImmutableSet;)Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v0

    return-object v0
.end method

.method private static parseWords(Lccsancom/google/common/collect/ImmutableSet;)Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;"
        }
    .end annotation

    .line 144
    .local p0, "nodes":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    sget-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    invoke-static {v0, p0}, Lccsancom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;

    move-result-object v0

    .line 149
    .local v0, "matchingPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "outside"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "after"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "before"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 161
    const/4 v1, 0x1

    .local v1, "position":I
    goto :goto_2

    .line 154
    .end local v1    # "position":I
    :pswitch_0
    const/4 v1, -0x2

    .line 155
    .restart local v1    # "position":I
    goto :goto_2

    .line 151
    .end local v1    # "position":I
    :pswitch_1
    const/4 v1, 0x2

    .line 152
    .restart local v1    # "position":I
    nop

    .line 164
    :goto_2
    sget-object v2, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    invoke-static {v2, p0}, Lccsancom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;

    move-result-object v2

    .line 165
    .local v2, "matchingSingleStyles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_1
    goto :goto_3

    :sswitch_3
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_4
    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :goto_3
    const/4 v5, -0x1

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 175
    const/4 v3, -0x1

    .local v3, "markShape":I
    goto :goto_5

    .line 171
    .end local v3    # "markShape":I
    :pswitch_2
    const/4 v3, 0x0

    .line 172
    .restart local v3    # "markShape":I
    nop

    .line 178
    :goto_5
    new-instance v4, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v4, v3, v7, v1}, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v4

    .line 181
    .end local v3    # "markShape":I
    :cond_2
    sget-object v3, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    invoke-static {v3, p0}, Lccsancom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;

    move-result-object v3

    .line 182
    .local v3, "matchingFills":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Lccsancom/google/common/collect/ImmutableSet;

    invoke-static {v8, p0}, Lccsancom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;

    move-result-object v8

    .line 183
    .local v8, "matchingShapes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 190
    new-instance v4, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v4, v6, v7, v1}, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v4

    .line 194
    :cond_3
    const-string v9, "filled"

    invoke-static {v3, v9}, Lccsancom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    :cond_4
    goto :goto_6

    :sswitch_5
    const-string v9, "open"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_7

    :sswitch_6
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_7

    :goto_6
    const/4 v9, -0x1

    :goto_7
    packed-switch v9, :pswitch_data_2

    .line 200
    const/4 v9, 0x1

    .local v9, "markFill":I
    goto :goto_8

    .line 196
    .end local v9    # "markFill":I
    :pswitch_3
    const/4 v9, 0x2

    .line 197
    .restart local v9    # "markFill":I
    nop

    .line 204
    :goto_8
    const-string v10, "circle"

    invoke-static {v8, v10}, Lccsancom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_3

    :cond_5
    goto :goto_9

    :sswitch_7
    const-string v4, "dot"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_a

    :sswitch_8
    const-string/jumbo v4, "sesame"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_a

    :sswitch_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_a

    :goto_9
    const/4 v4, -0x1

    :goto_a
    packed-switch v4, :pswitch_data_3

    .line 213
    const/4 v4, 0x1

    .local v4, "markShape":I
    goto :goto_b

    .line 209
    .end local v4    # "markShape":I
    :pswitch_4
    const/4 v4, 0x3

    .line 210
    .restart local v4    # "markShape":I
    goto :goto_b

    .line 206
    .end local v4    # "markShape":I
    :pswitch_5
    const/4 v4, 0x2

    .line 207
    .restart local v4    # "markShape":I
    nop

    .line 216
    :goto_b
    new-instance v5, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {v5, v4, v9, v1}, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5305c081 -> :sswitch_2
        -0x41ecca5b -> :sswitch_1
        0x58705dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2dddaf -> :sswitch_4
        0x33af38 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4bf7529e -> :sswitch_6
        0x34264a -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x51134330 -> :sswitch_9
        -0x35fdaa48 -> :sswitch_8
        0x18549 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
