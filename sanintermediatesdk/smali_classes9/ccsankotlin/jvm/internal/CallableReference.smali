.class public abstract Lccsankotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lccsankotlin/reflect/KCallable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lccsankotlin/reflect/KCallable;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lccsankotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lccsankotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lccsankotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    sget-object v0, Lccsankotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lccsankotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "isTopLevel"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lccsankotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lccsankotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    .line 72
    iput-object p3, p0, Lccsankotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lccsankotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    .line 74
    iput-boolean p5, p0, Lccsankotlin/jvm/internal/CallableReference;->isTopLevel:Z

    .line 75
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsankotlin/reflect/KCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # Ljava/util/Map;

    .line 166
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsankotlin/reflect/KCallable;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compute()Lccsankotlin/reflect/KCallable;
    .locals 1

    .line 86
    iget-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->reflected:Lccsankotlin/reflect/KCallable;

    .line 87
    .local v0, "result":Lccsankotlin/reflect/KCallable;
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->computeReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->reflected:Lccsankotlin/reflect/KCallable;

    .line 91
    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lccsankotlin/reflect/KCallable;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lccsankotlin/reflect/KDeclarationContainer;
    .locals 2

    .line 111
    iget-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lccsankotlin/jvm/internal/CallableReference;->isTopLevel:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;)Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsankotlin/reflect/KParameter;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lccsankotlin/reflect/KCallable;
    .locals 2

    .line 96
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->compute()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    .line 97
    .local v0, "result":Lccsankotlin/reflect/KCallable;
    if-eq v0, p0, :cond_0

    .line 100
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Lccsankotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {v1}, Lccsankotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw v1
.end method

.method public getReturnType()Lccsankotlin/reflect/KType;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->getReturnType()Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lccsankotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsankotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lccsankotlin/reflect/KVisibility;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->getVisibility()Lccsankotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/CallableReference;->getReflected()Lccsankotlin/reflect/KCallable;

    move-result-object v0

    invoke-interface {v0}, Lccsankotlin/reflect/KCallable;->isSuspend()Z

    move-result v0

    return v0
.end method
