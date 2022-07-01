.class public abstract Lccsansan/bs/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    }
.end annotation


# instance fields
.field private removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lccsansan/bs/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    return-void
.end method


# virtual methods
.method public addDownloadListener()Lccsancom/san/convert/database/ConvertIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    return-object v0
.end method
