//
//  MMDProgram.swift
//  MMDSceneKit
//
//  Created by magicien on 12/24/15.
//  Copyright © 2015 DarkHorse. All rights reserved.
//

import SceneKit

#if !os(watchOS)
    
public class MMDProgram: SCNProgram, SCNProgramDelegate {
    override public init() {
        super.init()
        
        self.delegate = self
        
        self.vertexFunctionName = "mmdVertex"
        self.fragmentFunctionName = "mmdFragment"
        
        /*
        let device = MTLCreateSystemDefaultDevice()
        print("device.name: \(device!.name!)")
        let libraryPath = Bundle(for: MMDProgram.self).path(forResource: "default", ofType: "metallib")
        print("libraryPath: \(libraryPath!)")
        
        let commandQueue = device!.makeCommandQueue()
        do {
            self.library = try device!.makeLibrary(filepath: libraryPath!)
        } catch {
            print("********* library setting error ************")
        }
        self.vertexFunctionName = "mmdVertex"
        self.fragmentFunctionName = "mmdFragment"

        let vertexShader = self.library!.makeFunction(name: "mmdVertex")
        let fragmentShader = self.library!.makeFunction(name: "mmdFragment")
        let functionNames = self.library!.functionNames
        
        for name in functionNames {
            print("functionName: \(name)")
        }
        */
        
        /*
        self.setSemantic(SCNModelTransform, forSymbol: "modelTransform", options: nil)
        self.setSemantic(SCNViewTransform, forSymbol: "viewTransform", options: nil)
        self.setSemantic(SCNProjectionTransform, forSymbol: "projectionTransform", options: nil)
        self.setSemantic(SCNNormalTransform, forSymbol: "normalTransform", options: nil)
        self.setSemantic(SCNModelViewTransform, forSymbol: "modelViewTransform", options: nil)
        self.setSemantic(SCNModelViewProjectionTransform, forSymbol: "modelViewProjectionTransform", options: nil)

        self.setSemantic(SCNGeometrySourceSemanticVertex, forSymbol: "aPos", options: nil)
        self.setSemantic(SCNGeometrySourceSemanticNormal, forSymbol: "aNormal", options: nil)
        self.setSemantic(SCNGeometrySourceSemanticColor, forSymbol: "aColor", options: nil)
        self.setSemantic(SCNGeometrySourceSemanticTexcoord, forSymbol: "aTexcoord0", options: [SCNProgramMappingChannelKey: 0])
        self.setSemantic(SCNGeometrySourceSemanticTexcoord, forSymbol: "aTexcoord1", options: [SCNProgramMappingChannelKey: 1])
        self.setSemantic(SCNGeometrySourceSemanticTexcoord, forSymbol: "aTexcoord2", options: [SCNProgramMappingChannelKey: 2])
        self.setSemantic(SCNGeometrySourceSemanticTexcoord, forSymbol: "aTexcoord3", options: [SCNProgramMappingChannelKey: 3])
        */
        
        print("*********** MMDProgram created ****************")
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @nonobjc public func program(_ program: SCNProgram, handleError error: NSError) {
        print("***** GLSL compile error: \(error)")
    }
}

#endif
