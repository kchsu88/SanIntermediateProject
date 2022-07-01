.class public abstract Lccsankotlin/jvm/internal/MutablePropertyReference1;
.super Lccsankotlin/jvm/internal/MutablePropertyReference;
.source "MutablePropertyReference1.java"

# interfaces
.implements Lccsankotlin/reflect/KMutableProperty1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 26
    invoke-direct/range {p0 .. p5}, Lccsankotlin/jvm/internal/MutablePropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected computeReflected()Lccsankotlin/reflect/KCallable;
    .locals 1

    .line 31
    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->mutableProperty1(Lccsankotlin/jvm/internal/MutablePropertyReference1;)Lccsankotlin/reflect/KMutableProperty1;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lccsankotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KMutableProperty1;

    invoke-interface {v0, p1}, Lccsankotlin/reflect/KMutableProperty1;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lccsankotlin/reflect/KProperty$Getter;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->getGetter()Lccsankotlin/reflect/KProperty1$Getter;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lccsankotlin/reflect/KProperty1$Getter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lccsankotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KMutableProperty1;

    invoke-interface {v0}, Lccsankotlin/reflect/KMutableProperty1;->getGetter()Lccsankotlin/reflect/KProperty1$Getter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSetter()Lccsankotlin/reflect/KMutableProperty$Setter;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->getSetter()Lccsankotlin/reflect/KMutableProperty1$Setter;

    move-result-object v0

    return-object v0
.end method

.method public getSetter()Lccsankotlin/reflect/KMutableProperty1$Setter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->getReflected()Lccsankotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KMutableProperty1;

    invoke-interface {v0}, Lccsankotlin/reflect/KMutableProperty1;->getSetter()Lccsankotlin/reflect/KMutableProperty1$Setter;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 36
    invoke-virtual {p0, p1}, Lccsankotlin/jvm/internal/MutablePropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
