.class public Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;
.super Ljava/lang/Object;
.source "MBNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/MBNativeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyWordInfo"
.end annotation


# instance fields
.field keyWordPN:Ljava/lang/String;

.field keyWorkVN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWordPN:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWorkVN:Ljava/lang/String;

    .line 338
    return-void
.end method


# virtual methods
.method public getKeyWordPN()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWordPN:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWorkVN()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWorkVN:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyWordPN(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWordPN:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setKeyWorkVN(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;->keyWorkVN:Ljava/lang/String;

    .line 332
    return-void
.end method
