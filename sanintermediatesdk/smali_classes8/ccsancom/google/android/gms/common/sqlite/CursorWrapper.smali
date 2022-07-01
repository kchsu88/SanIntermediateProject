.class public Lccsancom/google/android/gms/common/sqlite/CursorWrapper;
.super Lccsanandroid/database/CursorWrapper;

# interfaces
.implements Lccsanandroid/database/CrossProcessCursor;


# instance fields
.field private zzez:Lccsanandroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Lccsanandroid/database/Cursor;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/database/CursorWrapper;-><init>(Lccsanandroid/database/Cursor;)V

    .line 2
    nop

    .line 3
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    instance-of v1, p1, Lccsanandroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lccsanandroid/database/CursorWrapper;

    invoke-virtual {p1}, Lccsanandroid/database/CursorWrapper;->getWrappedCursor()Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lccsanandroid/database/AbstractWindowedCursor;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    check-cast p1, Lccsanandroid/database/AbstractWindowedCursor;

    .line 9
    iput-object p1, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    .line 10
    return-void
.end method


# virtual methods
.method public fillWindow(ILccsanandroid/database/CursorWindow;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/AbstractWindowedCursor;->fillWindow(ILccsanandroid/database/CursorWindow;)V

    .line 15
    return-void
.end method

.method public getWindow()Lccsanandroid/database/CursorWindow;
    .locals 1

    .line 11
    iget-object v0, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    invoke-virtual {v0}, Lccsanandroid/database/AbstractWindowedCursor;->getWindow()Lccsanandroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedCursor()Lccsanandroid/database/Cursor;
    .locals 1

    .line 17
    nop

    .line 18
    iget-object v0, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    .line 19
    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/database/AbstractWindowedCursor;->onMove(II)Z

    move-result p1

    return p1
.end method

.method public setWindow(Lccsanandroid/database/CursorWindow;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lccsancom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Lccsanandroid/database/AbstractWindowedCursor;

    invoke-virtual {v0, p1}, Lccsanandroid/database/AbstractWindowedCursor;->setWindow(Lccsanandroid/database/CursorWindow;)V

    .line 13
    return-void
.end method
