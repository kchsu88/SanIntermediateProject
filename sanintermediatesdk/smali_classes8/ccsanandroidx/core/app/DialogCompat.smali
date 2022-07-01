.class public Lccsanandroidx/core/app/DialogCompat;
.super Ljava/lang/Object;
.source "DialogCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static requireViewById(Lccsanandroid/app/Dialog;I)Lccsanandroid/view/View;
    .locals 3
    .param p0, "dialog"    # Lccsanandroid/app/Dialog;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 55
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lccsanandroid/app/Dialog;->requireViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/app/Dialog;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 63
    return-object v0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
