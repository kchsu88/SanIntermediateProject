.class public Lccsancom/mbridge/msdk/foundation/download/DownloadError;
.super Ljava/lang/Object;
.source "DownloadError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->exception:Ljava/lang/Exception;

    .line 9
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 12
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->exception:Ljava/lang/Exception;

    return-object v0
.end method
