.class public Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
.super Ljava/lang/Object;
.source "CommonJumpLoader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/CommonJumpLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpLoaderResult"
.end annotation


# static fields
.field public static final CODE_DOWNLOAD:I = 0x3

.field public static final CODE_LINK:I = 0x2

.field public static final CODE_MARKET:I = 0x1

.field public static final CODE_NULL:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private content:Ljava/lang/String;

.field private exceptionMsg:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private is302Jump:Z

.field private jumpDone:Z

.field private msg:Ljava/lang/String;

.field private noticeurl:Ljava/lang/String;

.field private statusCode:I

.field private success:Z

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 298
    iget v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionMsg()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->exceptionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeurl()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->noticeurl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 226
    iget v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->statusCode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 242
    iget v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isIs302Jump()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->is302Jump:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->success:Z

    return v0
.end method

.method public isjumpDone()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->jumpDone:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 302
    iput p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->code:I

    .line 303
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->content:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setExceptionMsg(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->exceptionMsg:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->header:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setIs302Jump(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->is302Jump:Z

    .line 239
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->msg:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setNoticeurl(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->noticeurl:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 230
    iput p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->statusCode:I

    .line 231
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->success:Z

    .line 287
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 246
    iput p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->type:I

    .line 247
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->url:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setjumpDone(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->jumpDone:Z

    .line 319
    return-void
.end method
