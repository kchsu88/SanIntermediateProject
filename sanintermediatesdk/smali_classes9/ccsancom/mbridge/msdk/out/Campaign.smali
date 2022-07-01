.class public Lccsancom/mbridge/msdk/out/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_BIG:I = 0x3

.field public static final TYPE_ICON:I = 0x2

.field public static final TYPE_MB:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public adCall:Ljava/lang/String;

.field private adchoiceSizeHeight:I

.field private adchoiceSizeWidth:I

.field private appDesc:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private bigDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private iconDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

.field private nativead:Ljava/lang/Object;

.field private numberRating:I

.field private packageName:Ljava/lang/String;

.field private rating:D

.field private size:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private videoLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->id:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->packageName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->appName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->size:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->timestamp:J

    .line 40
    const v0, 0x8235

    iput v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->numberRating:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->type:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeWidth:I

    .line 65
    iput v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeHeight:I

    .line 67
    iput v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->videoLength:I

    return-void
.end method

.method private BitmapToDrawable(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 242
    new-instance v0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Lccsanandroid/graphics/drawable/BitmapDrawable;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 243
    return-object v0
.end method


# virtual methods
.method public getAdCall()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->adCall:Ljava/lang/String;

    return-object v0
.end method

.method public getAdchoiceSizeHeight()I
    .locals 1

    .line 226
    iget v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeHeight:I

    return v0
.end method

.method public getAdchoiceSizeWidth()I
    .locals 1

    .line 218
    iget v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeWidth:I

    return v0
.end method

.method public getAppDesc()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBigDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->bigDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->iconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNativead()Ljava/lang/Object;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->nativead:Ljava/lang/Object;

    return-object v0
.end method

.method public getNumberRating()I
    .locals 1

    .line 120
    iget v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->numberRating:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->rating:D

    return-wide v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 194
    iget v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->type:I

    return v0
.end method

.method public getVideoLength()I
    .locals 1

    .line 259
    iget v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->videoLength:I

    return v0
.end method

.method public loadIconUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

    .line 71
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 74
    :cond_0
    return-void
.end method

.method public loadImageUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

    .line 78
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 109
    return-void
.end method

.method public onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/out/Campaign;->BitmapToDrawable(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/out/Campaign;->setBigDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/Campaign;->mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/out/Campaign;->BitmapToDrawable(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/out/OnImageLoadListener;->loadSuccess(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/out/Campaign;->BitmapToDrawable(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/out/Campaign;->setIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/Campaign;->mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

    if-eqz p2, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/out/Campaign;->BitmapToDrawable(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p2, p1, v0}, Lccsancom/mbridge/msdk/out/OnImageLoadListener;->loadSuccess(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 104
    :cond_1
    return-void
.end method

.method public setAdCall(Ljava/lang/String;)V
    .locals 1

    .line 139
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->adCall:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setAdchoiceSizeHeight(I)V
    .locals 0

    .line 230
    iput p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeHeight:I

    .line 231
    return-void
.end method

.method public setAdchoiceSizeWidth(I)V
    .locals 0

    .line 222
    iput p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->adchoiceSizeWidth:I

    .line 223
    return-void
.end method

.method public setAppDesc(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->appDesc:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->appName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBigDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->bigDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 252
    return-void
.end method

.method public setIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->iconDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 248
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->iconUrl:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->imageUrl:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setNativead(Ljava/lang/Object;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->nativead:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public setNumberRating(I)V
    .locals 0

    .line 124
    iput p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->numberRating:I

    .line 125
    return-void
.end method

.method public setOnImageLoadListener(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->mOnImageLoadListener:Lccsancom/mbridge/msdk/out/OnImageLoadListener;

    .line 85
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->packageName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setRating(D)V
    .locals 0

    .line 116
    iput-wide p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->rating:D

    .line 117
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->size:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->subType:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->timestamp:J

    .line 207
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 198
    iput p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->type:I

    .line 199
    return-void
.end method

.method public setVideoLength(I)V
    .locals 0

    .line 255
    iput p1, p0, Lccsancom/mbridge/msdk/out/Campaign;->videoLength:I

    .line 256
    return-void
.end method
