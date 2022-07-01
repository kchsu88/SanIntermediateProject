.class Lccsanandroidx/appcompat/widget/SwitchCompat$1;
.super Lccsanandroid/util/Property;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroidx/appcompat/widget/SwitchCompat;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 103
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lccsanandroidx/appcompat/widget/SwitchCompat;

    .line 106
    iget v0, p1, Lccsanandroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Lccsanandroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/SwitchCompat$1;->get(Lccsanandroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lccsanandroidx/appcompat/widget/SwitchCompat;
    .param p2, "value"    # Ljava/lang/Float;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 112
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lccsanandroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/widget/SwitchCompat$1;->set(Lccsanandroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V

    return-void
.end method
