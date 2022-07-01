.class public final Lccsanandroidx/core/database/sqlite/SQLiteCursorCompat;
.super Ljava/lang/Object;
.source "SQLiteCursorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static setFillWindowForwardOnly(Lccsanandroid/database/sqlite/SQLiteCursor;Z)V
    .locals 2
    .param p0, "cursor"    # Lccsanandroid/database/sqlite/SQLiteCursor;
    .param p1, "fillWindowForwardOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cursor",
            "fillWindowForwardOnly"
        }
    .end annotation

    .line 45
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lccsanandroid/database/sqlite/SQLiteCursor;->setFillWindowForwardOnly(Z)V

    .line 48
    :cond_0
    return-void
.end method
