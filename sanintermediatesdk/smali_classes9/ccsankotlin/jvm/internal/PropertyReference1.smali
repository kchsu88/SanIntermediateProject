.class public abstract Lccsankotlin/jvm/internal/PropertyReference1;
.super Lccsankotlin/jvm/internal/PropertyReference;
.source "PropertyReference1.java"

# interfaces
.implements Lccsankotlin/reflect/KProperty1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lccsankotlin/jvm/internal/PropertyReference;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 25
    invoke-direct/range {p0 .. p5}, Lccsankotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected computeReflected()Lccsankotlin/reflect/KCallable;
    .locals 1

    .line 30
    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->property1(Lccsankotlin/jvm/internal/PropertyReference1;)Lccsankotlin/reflect/KProperty1;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/PropertyReference1;->getReflected()Lccsankotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KProperty1;

    invoke-interface {v0, p1}, Lccsankotlin/reflect/KProperty1;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lccsankotlin/reflect/KProperty$Getter;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/PropertyReference1;->getGetter()Lccsankotlin/reflect/KProperty1$Getter;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lccsankotlin/reflect/KProperty1$Getter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/PropertyReference1;->getReflected()Lccsankotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lccsankotlin/reflect/KProperty1;

    invoke-interface {v0}, Lccsankotlin/reflect/KProperty1;->getGetter()Lccsankotlin/reflect/KProperty1$Getter;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 35
    invoke-virtual {p0, p1}, Lccsankotlin/jvm/internal/PropertyReference1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
