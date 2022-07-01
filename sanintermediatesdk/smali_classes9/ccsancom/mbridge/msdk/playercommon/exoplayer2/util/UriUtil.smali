.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .locals 10

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 227
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 228
    aput v3, v0, v2

    .line 229
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 235
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 236
    if-ne v4, v3, :cond_1

    .line 237
    goto :goto_0

    .line 236
    :cond_1
    move v1, v4

    .line 239
    :goto_0
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 240
    if-eq v4, v3, :cond_2

    if-le v4, v1, :cond_3

    .line 242
    :cond_2
    move v4, v1

    .line 246
    :cond_3
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 247
    if-eq v6, v3, :cond_4

    if-le v6, v4, :cond_5

    .line 248
    :cond_4
    move v6, v4

    .line 250
    :cond_5
    const/16 v7, 0x3a

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 251
    if-le v7, v6, :cond_6

    .line 253
    const/4 v7, -0x1

    .line 258
    :cond_6
    add-int/lit8 v6, v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v4, :cond_7

    add-int/lit8 v9, v7, 0x1

    .line 259
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_7

    .line 260
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    .line 262
    :goto_1
    if-eqz v6, :cond_9

    .line 263
    add-int/lit8 v6, v7, 0x3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    .line 264
    if-eq p0, v3, :cond_8

    if-le p0, v4, :cond_a

    .line 265
    :cond_8
    move p0, v4

    goto :goto_2

    .line 268
    :cond_9
    add-int/lit8 p0, v7, 0x1

    .line 271
    :cond_a
    :goto_2
    aput v7, v0, v2

    .line 272
    aput p0, v0, v8

    .line 273
    const/4 p0, 0x2

    aput v4, v0, p0

    .line 274
    const/4 p0, 0x3

    aput v1, v0, p0

    .line 275
    return-object v0
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    .line 174
    if-lt p1, p2, :cond_0

    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 180
    add-int/lit8 p1, p1, 0x1

    .line 183
    :cond_1
    nop

    .line 184
    move v0, p1

    move v2, v0

    .line 185
    :goto_0
    if-gt v0, p2, :cond_7

    .line 187
    if-ne v0, p2, :cond_2

    .line 188
    move v3, v0

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    .line 190
    add-int/lit8 v3, v0, 0x1

    .line 197
    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 199
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 200
    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    .line 201
    goto :goto_3

    .line 202
    :cond_3
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    .line 203
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    .line 205
    add-int/lit8 v2, v2, -0x2

    const-string v0, "/"

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 206
    if-le v0, p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p1

    .line 207
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    .line 209
    nop

    .line 210
    nop

    .line 211
    move v2, v0

    goto :goto_3

    .line 212
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 213
    move v2, v0

    .line 215
    :goto_3
    move v0, v2

    goto :goto_0

    .line 192
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 193
    goto :goto_0

    .line 216
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeQueryParameter(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/net/Uri;
    .locals 5

    .line 154
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lccsanandroid/net/Uri$Builder;->clearQuery()Lccsanandroid/net/Uri$Builder;

    .line 156
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {p0, v2}, Lccsanandroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v2, v4}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    .line 160
    goto :goto_1

    .line 162
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    .line 89
    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 91
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1

    .line 92
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    aget p0, v1, v6

    aget p1, v1, v5

    invoke-static {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_2
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    .line 100
    const/4 v7, 0x3

    aget v8, v1, v7

    if-nez v8, :cond_3

    .line 103
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_3
    aget v7, v1, v5

    if-nez v7, :cond_4

    .line 109
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_4
    aget v7, v1, v6

    if-eqz v7, :cond_5

    .line 114
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 115
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_5
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 122
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    invoke-static {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :cond_6
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_7

    .line 132
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 140
    if-ne v7, v4, :cond_8

    aget v4, v3, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 141
    :goto_0
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
