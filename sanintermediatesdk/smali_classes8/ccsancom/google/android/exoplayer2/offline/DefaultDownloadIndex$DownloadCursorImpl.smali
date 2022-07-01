.class final Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/offline/DownloadCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadCursorImpl"
.end annotation


# instance fields
.field private final cursor:Lccsanandroid/database/Cursor;


# direct methods
.method private constructor <init>(Lccsanandroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Lccsanandroid/database/Cursor;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    .line 550
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/database/Cursor;Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/database/Cursor;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$1;

    .line 544
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;-><init>(Lccsanandroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 574
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 575
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 559
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDownload()Lccsancom/google/android/exoplayer2/offline/Download;
    .locals 1

    .line 554
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex;->access$100(Lccsanandroid/database/Cursor;)Lccsancom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 564
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public synthetic isAfterLast()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isAfterLast(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isBeforeFirst()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isBeforeFirst(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0}, Lccsanandroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public synthetic isFirst()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isFirst(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic isLast()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$isLast(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToFirst()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToFirst(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToLast()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToLast(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToNext(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 569
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/DefaultDownloadIndex$DownloadCursorImpl;->cursor:Lccsanandroid/database/Cursor;

    invoke-interface {v0, p1}, Lccsanandroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToPrevious()Z
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/offline/DownloadCursor$-CC;->$default$moveToPrevious(Lccsancom/google/android/exoplayer2/offline/DownloadCursor;)Z

    move-result v0

    return v0
.end method
