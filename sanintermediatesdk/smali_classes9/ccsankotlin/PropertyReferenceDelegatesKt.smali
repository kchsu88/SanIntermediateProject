.class public final Lccsankotlin/PropertyReferenceDelegatesKt;
.super Ljava/lang/Object;
.source "PropertyReferenceDelegates.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0087\n\u00a2\u0006\u0002\u0010\u0007\u001a>\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0008\"\u0004\u0008\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u00010\t2\u0006\u0010\u0003\u001a\u0002H\u00082\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0087\n\u00a2\u0006\u0002\u0010\n\u001a<\u0010\u000b\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\r2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u000e\u001a\u0002H\u0001H\u0087\n\u00a2\u0006\u0002\u0010\u000f\u001aF\u0010\u000b\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0008\"\u0004\u0008\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u00010\u00102\u0006\u0010\u0003\u001a\u0002H\u00082\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u000e\u001a\u0002H\u0001H\u0087\n\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "getValue",
        "V",
        "Lccsankotlin/reflect/KProperty0;",
        "thisRef",
        "",
        "property",
        "Lccsankotlin/reflect/KProperty;",
        "(Lccsankotlin/reflect/KProperty0;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;",
        "T",
        "Lccsankotlin/reflect/KProperty1;",
        "(Lccsankotlin/reflect/KProperty1;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;",
        "setValue",
        "",
        "Lccsankotlin/reflect/KMutableProperty0;",
        "value",
        "(Lccsankotlin/reflect/KMutableProperty0;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "Lccsankotlin/reflect/KMutableProperty1;",
        "(Lccsankotlin/reflect/KMutableProperty1;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;Ljava/lang/Object;)V",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private static final getValue(Lccsankotlin/reflect/KProperty0;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getValue"    # Lccsankotlin/reflect/KProperty0;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lccsankotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/reflect/KProperty0<",
            "+TV;>;",
            "Ljava/lang/Object;",
            "Lccsankotlin/reflect/KProperty<",
            "*>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$getValue":I
    const-string v1, "$this$getValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lccsankotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final getValue(Lccsankotlin/reflect/KProperty1;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getValue"    # Lccsankotlin/reflect/KProperty1;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lccsankotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/reflect/KProperty1<",
            "TT;+TV;>;TT;",
            "Lccsankotlin/reflect/KProperty<",
            "*>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$getValue":I
    const-string v1, "$this$getValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p0, p1}, Lccsankotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final setValue(Lccsankotlin/reflect/KMutableProperty0;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$setValue"    # Lccsankotlin/reflect/KMutableProperty0;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lccsankotlin/reflect/KProperty;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/reflect/KMutableProperty0<",
            "TV;>;",
            "Ljava/lang/Object;",
            "Lccsankotlin/reflect/KProperty<",
            "*>;TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$setValue":I
    const-string v1, "$this$setValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0, p3}, Lccsankotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method private static final setValue(Lccsankotlin/reflect/KMutableProperty1;Ljava/lang/Object;Lccsankotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 2
    .param p0, "$this$setValue"    # Lccsankotlin/reflect/KMutableProperty1;
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lccsankotlin/reflect/KProperty;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/reflect/KMutableProperty1<",
            "TT;TV;>;TT;",
            "Lccsankotlin/reflect/KProperty<",
            "*>;TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$setValue":I
    const-string v1, "$this$setValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0, p1, p3}, Lccsankotlin/reflect/KMutableProperty1;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-void
.end method
