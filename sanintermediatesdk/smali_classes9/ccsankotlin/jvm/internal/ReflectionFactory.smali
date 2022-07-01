.class public Lccsankotlin/jvm/internal/ReflectionFactory;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;

    .line 18
    new-instance v0, Lccsankotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lccsankotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "internalName"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lccsankotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lccsankotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public function(Lccsankotlin/jvm/internal/FunctionReference;)Lccsankotlin/reflect/KFunction;
    .locals 0
    .param p1, "f"    # Lccsankotlin/jvm/internal/FunctionReference;

    .line 51
    return-object p1
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;

    .line 30
    new-instance v0, Lccsankotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lccsankotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "internalName"    # Ljava/lang/String;

    .line 34
    new-instance v0, Lccsankotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lccsankotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KDeclarationContainer;
    .locals 1
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "moduleName"    # Ljava/lang/String;

    .line 26
    new-instance v0, Lccsankotlin/jvm/internal/PackageReference;

    invoke-direct {v0, p1, p2}, Lccsankotlin/jvm/internal/PackageReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public mutableProperty0(Lccsankotlin/jvm/internal/MutablePropertyReference0;)Lccsankotlin/reflect/KMutableProperty0;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference0;

    .line 61
    return-object p1
.end method

.method public mutableProperty1(Lccsankotlin/jvm/internal/MutablePropertyReference1;)Lccsankotlin/reflect/KMutableProperty1;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference1;

    .line 69
    return-object p1
.end method

.method public mutableProperty2(Lccsankotlin/jvm/internal/MutablePropertyReference2;)Lccsankotlin/reflect/KMutableProperty2;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference2;

    .line 77
    return-object p1
.end method

.method public property0(Lccsankotlin/jvm/internal/PropertyReference0;)Lccsankotlin/reflect/KProperty0;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/PropertyReference0;

    .line 57
    return-object p1
.end method

.method public property1(Lccsankotlin/jvm/internal/PropertyReference1;)Lccsankotlin/reflect/KProperty1;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/PropertyReference1;

    .line 65
    return-object p1
.end method

.method public property2(Lccsankotlin/jvm/internal/PropertyReference2;)Lccsankotlin/reflect/KProperty2;
    .locals 0
    .param p1, "p"    # Lccsankotlin/jvm/internal/PropertyReference2;

    .line 73
    return-object p1
.end method

.method public renderLambdaToString(Lccsankotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 3
    .param p1, "lambda"    # Lccsankotlin/jvm/internal/FunctionBase;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "result":Ljava/lang/String;
    const-string v1, "kotlin.jvm.functions."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public renderLambdaToString(Lccsankotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1
    .param p1, "lambda"    # Lccsankotlin/jvm/internal/Lambda;

    .line 39
    invoke-virtual {p0, p1}, Lccsankotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lccsankotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUpperBounds(Lccsankotlin/reflect/KTypeParameter;Ljava/util/List;)V
    .locals 1
    .param p1, "typeParameter"    # Lccsankotlin/reflect/KTypeParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/reflect/KTypeParameter;",
            "Ljava/util/List<",
            "Lccsankotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Lccsankotlin/reflect/KType;>;"
    move-object v0, p1

    check-cast v0, Lccsankotlin/jvm/internal/TypeParameterReference;

    invoke-virtual {v0, p2}, Lccsankotlin/jvm/internal/TypeParameterReference;->setUpperBounds(Ljava/util/List;)V

    .line 95
    return-void
.end method

.method public typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;
    .locals 1
    .param p1, "klass"    # Lccsankotlin/reflect/KClassifier;
    .param p3, "isMarkedNullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lccsankotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lccsankotlin/reflect/KType;"
        }
    .end annotation

    .line 84
    .local p2, "arguments":Ljava/util/List;, "Ljava/util/List<Lccsankotlin/reflect/KTypeProjection;>;"
    new-instance v0, Lccsankotlin/jvm/internal/TypeReference;

    invoke-direct {v0, p1, p2, p3}, Lccsankotlin/jvm/internal/TypeReference;-><init>(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)V

    return-object v0
.end method

.method public typeParameter(Ljava/lang/Object;Ljava/lang/String;Lccsankotlin/reflect/KVariance;Z)Lccsankotlin/reflect/KTypeParameter;
    .locals 1
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "variance"    # Lccsankotlin/reflect/KVariance;
    .param p4, "isReified"    # Z

    .line 89
    new-instance v0, Lccsankotlin/jvm/internal/TypeParameterReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsankotlin/jvm/internal/TypeParameterReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Lccsankotlin/reflect/KVariance;Z)V

    return-object v0
.end method
